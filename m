Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4C9B081ED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 02:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B85B41538;
	Thu, 17 Jul 2025 00:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZA5o88EnUct; Thu, 17 Jul 2025 00:54:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8048D41539
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752713679;
	bh=e+p3E4tZzme/ucD/eZnNvb8gNfkG/no9zrj8lOtg47c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KCmgxMGVYFt7GE7zck5HUVJAndWqz8MR4/Vw13k795FaVMt7puj+tJ7sa3Y2nrT5S
	 EyYDINz9R2ioV143I/eBKt3OJZMVkhHIZoDfqsCrHM7hqT4fGSj1ixfEo5RooPcs5p
	 SM+HCZgfAp/tKed9toUJL58q//jEa82uaDLrW2POSQdBaODvjn2T6u78XSRQ0VMM6N
	 irU3lcehUqzrRYLlYeu2MtS7f5JaWTg0F/DlU+Fv1vZklnToWsNzzdbh9cKYHHjGmL
	 04FWN7P3QQAT+VdkwPbf2xMl0+pQk/O3d1P3OHT6S+xZ/zfQBV7CdtNgaqIJyKUIWZ
	 2sGsvvgun/e6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8048D41539;
	Thu, 17 Jul 2025 00:54:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A3E0234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 00:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 40D0B61160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 00:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HVhjcqxdu82X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 00:54:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A0D3361107
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0D3361107
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0D3361107
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 00:54:34 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-47-687849c8d648
Date: Thu, 17 Jul 2025 09:54:27 +0900
From: Byungchul Park <byungchul@sk.com>
To: Mina Almasry <almasrymina@google.com>
Cc: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 willy@infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kernel_team@skhynix.com, ilias.apalodimas@linaro.org,
 harry.yoo@oracle.com, akpm@linux-foundation.org,
 andrew+netdev@lunn.ch, asml.silence@gmail.com, toke@redhat.com,
 david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
 rppt@kernel.org, surenb@google.com, mhocko@suse.com,
 linux-rdma@vger.kernel.org, bpf@vger.kernel.org,
 vishal.moola@gmail.com, hannes@cmpxchg.org, ziy@nvidia.com,
 jackmanb@google.com, wei.fang@nxp.com, shenwei.wang@nxp.com,
 xiaoning.wang@nxp.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, sgoutham@marvell.com,
 gakula@marvell.com, sbhatta@marvell.com, hkelam@marvell.com,
 bbhushan2@marvell.com, tariqt@nvidia.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 sdf@fomichev.me, saeedm@nvidia.com, leon@kernel.org,
 mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com,
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org,
 matthias.schiffer@ew.tq-group.com, robh@kernel.org,
 imx@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Message-ID: <20250717005427.GA58539@system.software.com>
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
 <CAHS8izNh7aCJOb1WKTx7CXNDPv_UBqFyq2XEHHhqHH=5JPmJCQ@mail.gmail.com>
 <20250715013626.GA49874@system.software.com>
 <CAHS8izNgfrN-MimH1uv349AqNudvQJoeOsyHpoBT_QokF3Zv=w@mail.gmail.com>
 <20250716045124.GB12760@system.software.com>
 <CAHS8izMK2JA4rGNMRMqQbZtJVEP8b_QPLXzoKNeVgQFzAmdv3g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHS8izMK2JA4rGNMRMqQbZtJVEP8b_QPLXzoKNeVgQFzAmdv3g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUyTZxSG87zfbWj20jH2iCFbuphlJrK5ke0kk+lIFt4l27KFmOzjhzbj
 je2ASgoUMC4yQBcQqwM3pFZXtfI9qYVCxcpGIVjn5rAgqYKtwEpg1I8pNNQWWAsx49+V59y5
 r3OShyPll5gkTq0pELUaZY6CkVLS+3Fnt1z7sFj1RqCfBmN7GwM3n5yhoXWxGBrv2WlwN2O4
 PLRIgLGlC8F8aIwFa+U4CU8GrjJw7kyQhJDlCAXGvyooWGh/SoJ/cJIFl3OJglbrx+BrmKbA
 8X03Cf0Lm2DyqIuBIxVhEuq9BxlYuROm4UroAQtl9iYCrszZWBjq0tNw/Ol5ErpL70VdU6M0
 DPcYGRguv4nA27ZCw7QzKgw0jbOgbzUgcP7azEBZxVsQsM2z8OjHARJ8+h2wfEIHg6ZECF4P
 IBg7f4uAFYedhRveCzQMtHcTMDIRIiFYfYqBqvtHEdyq7yHgj1MWGszXR4joHpkwuhIhoNZt
 YmCqwofA3T9Jwcnv9Ajaez00/OuInhxeNDI70oX+wENSsN81I6Gz+TYhzBxbJgRP7++EcMlw
 lxVM1kKho2mzcM4xSwhVHjcpWFsqGcH6uIYVxkcdjOA6EaaEDvMBYaajHn2a/KV0W5aYo9aJ
 2tff2y1VLfSVo7xDycW+BitRinyJVUjCYT4Vl/5ioZ/x7epaNsYUvwlfbPSTMWb4V7HHE1rl
 BP41bO79IZqXciR/IQ5PzN1BscHzfCE+O+GhYizjAXsv1qFYSM6PkfinSBWzNojH1+r/Xg2R
 0dbIaXe0lYvyRty4zK09v4TLbSdXZRL+M+wdsa3yC/wr+Leuq0SsE/NBCe4z+Zm1rTfgviYP
 dQzFG9YpDOsUhv8VhnUKE6JakFyt0eUq1TmpKaoSjbo45eu9uVYU/dAN30a+sqPHQ5lOxHNI
 ESfbbSlSyWmlLr8k14kwRyoSZLVunUouy1KW7BO1e3dpC3PEfCfayFGKF2VvBouy5PweZYGY
 LYp5ovbZlOAkSaVo+9ZKTXg53nwjbf+05DnC1eZOm03fWZZ0eFb2cN6X7M9Y+jzy0csZ2ZGU
 vLe3JRUFtg8SB1WXC2rcu4ZPv//N4Xcs2s5U058G10CC0OLc0Fwu1vVkdNq+qBbSJh8M1c3s
 kT2aSwRSL/1gekt25tL+fVPH0w/VVM+/e2DiZ/8/EP5EQeWrlFs3k9p85X9lTB/3zAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0xbZRjH95733OioOZa6nWy6zZpFJRFGxPgkc4bNLBxMXLb4wXiZo5GT
 tRs3W6hgXGRt1awBBuJwdFSZY1BgQikWKlamLdk652UrjHS0a7kIwQ3dlEsoVFjLYuTb73n+
 T37/98PLYlktvYlV5xeJmnxlroKWkJJ9Ow3PeLNKVDs8/q1Q33GBhuszZyloWyiB5hEnBb4W
 Hr67tkBAfWs3gtlIgAH7iSCGmf7LNJw7O48hYqsgof43IwlzHYsYJi6NMeB1/0tCm/0VCDdN
 kuD6pAeDZ247jJ300lBhXMJQF/qIhpXhJQq+j/zFgN5pJcBjuRIb7zgYuNZdScFni+cx9JSN
 xArHhygY6K2nYcBwHUHowgoFk+5Y67Q1yEBlmxmB+2ILDXrjszDtmGXg3ql+DOHKDFg+rYNL
 DRtg/uo0gsD5GwSsuJwM/Bpqp6C/o4eAwdEIhvlyCw2mP08iuFHXS8DPFhsFjVcHidg7XoWh
 lSgBNb4GGsaNYQQ+zxgJZ45XIujo81Pwt8tIZrwkeKbvYsF5qxEJ37TcJISpqmVC8Pf9RAjf
 mm8xQoO9WOiyJgvnXH8Qgsnvw4K99QQt2P/5lBGCQy5a8J5eIoWuxg+Fqa46tH/LG5IXcsRc
 tU7UpL6YLVHN/WhAhR8/VhJushNlKLzBhBJYnkvnb5bXMHEmue18Z/MEjjPNPcn7/ZFVlnNP
 84191ZQJSVjMtSfyo3eGUTxI4or5r0b9ZJylHPChzs9R/EjGBTBfGzXRD4KH+St1v68e4Zg1
 +oUvZmVjvJlvXmYfrLfyBseZ1bIE7gAfGnSs8iPcE/wP3ZeJKvSQeY3JvMZk/t9kXmNqQGQr
 kqvzdXlKde5zKdqjqtJ8dUnKOwV5dhT7rU3HotVONDuQ6UYcixSJ0mzbeyoZpdRpS/PciGex
 Qi6t8elUMmmOsvR9UVNwSFOcK2rdaDNLKjZKX35NzJZxh5VF4lFRLBQ1/6UEm7CpDFVFA7qN
 u2y/FO78MqPz0GLwrZHJpFP9T70pV08Eds8Yvt4mLV83mpWJXqdqLYb9qDrgPWLPsZK+g0VT
 VfqDexL08t3r0psOUPf2Zr29Pn1qvXMy0Zb2aFJqT+ptZdqOtt6gLOvw8HjKwgfstmprRN9u
 uRjQVxQcf/eIo+/5x5MzlxSkVqVMS8YarfI+rd0rxKkDAAA=
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 02/12] netmem: use
 netmem_desc instead of page to access ->pp in __netmem_get_pp()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 16, 2025 at 12:41:04PM -0700, Mina Almasry wrote:
> On Tue, Jul 15, 2025 at 9:51 PM Byungchul Park <byungchul@sk.com> wrote:
> >
> > On Tue, Jul 15, 2025 at 12:09:34PM -0700, Mina Almasry wrote:
> > > On Mon, Jul 14, 2025 at 6:36 PM Byungchul Park <byungchul@sk.com> wrote:
> > > >
> > > > On Mon, Jul 14, 2025 at 12:58:15PM -0700, Mina Almasry wrote:
> > > > > On Mon, Jul 14, 2025 at 12:37 PM Mina Almasry <almasrymina@google.com> wrote:
> > > >    2) Introduce the unsafe version, __netmem_to_nmdesc(), and use it in
> > > >       __netmem_get_pp().
> > > >
> > >
> > > No need following Pavel's feedback. We can just delete
> > > __netmem_get_pp. If we do find a need in the future to extract the
> > > netmem_desc from a netmem_ref, I would rather we do a straight cast
> > > from netmem_ref to netmem_desc rather than netmem_ref -> pages/net_iov
> > > -> netmem_desc.
> > >
> > > But that seems unnecessary for this series.
> >
> > No.  The series should remove accessing ->pp through page.
> >
> > I will kill __netmem_get_pp() as you and I prefer.  However,
> > __netmem_get_pp() users e.i. libeth_xdp_return_va() and
> > libeth_xdp_tx_fill_buf() should be altered.  I will modify the code like:
> >
> > as is: __netmem_get_pp(netmem)
> > to be: __netmem_nmdesc(netmem)->pp
> >
> > Is it okay with you?
> >
> 
> When Pavel and I were saying 'remove __netmem_get_pp', I think we
> meant to remove the entire concept of unsafe netmem -> page
> conversions. I think we both don't like them. From this perspective,
> __netmem_nmdesc(netmem)->pp is just as bad as __netmem_get_pp(netmem).
> 
> I think since the unsafe netmem-to-page casts are already in mainline,
> lets assume they should stay there until someone feels strongly enough
> to remove them. The logic in Olek's patch is sound:
> 
> https://lore.kernel.org/all/20241203173733.3181246-8-aleksander.lobakin@intel.com/
> 
> Header buffer page pools do always use pages and will likely remain so
> for a long time, so I guess lets continue to support them rather than
> try to remove them in this series. A followup series could try to
> remove them.

At the beginning of this work, I was unconfortable to see the network
code keeps the unsafe version maybe for optimization(?).  I decided to
accept it, thinking there must be some reason.

However, it'd be good that a followup series would try to remove them as
you said.

> > > >    3) Rename __netmem_clear_lsb() to netmem_to_nmdesc(), and return
> > > >       netmem_desc, and use it in all users of __netmem_clear_lsb().
> > > >
> > >
> > > Following Pavel's comment, this I think also is not necessary for this
> > > series. Cleaning up the return value of __netmem_clear_lsb is good
> > > work I think, but we're already on v10 of this and I think it would
> > > unnecessary to ask for added cleanups. We can do the cleanup on top.
> >
> > However, I still need to include 'introduce __netmem_nmdesc() helper'
> 
> Yes.
> 
> > in this series since it should be used to remove __netmem_get_pp() as I
> 
> lets keep __netmem_get_pp, which does a `return

Okay.  I will.

	Byungchul

> __netmem_nmdesc(netmem)->pp;` In general we avoid allowing the driver
> to do any netmem casts in the driver code, and we do any casting in
> core.
> 
> > described above.  I think I'd better add netmem_nmdesc() too while at it.
> >
> 
> Yes. netmem_nmdesc should replace __netmem_clear_lsb.
> 
> > I assume __netmem_nmdesc() is an unsafe version not clearing lsb.  The
> 
> Yes.
> 
> > safe version, netmem_nmdesc() needs an additional operation clearing lsb.
> 
> Yes.
> 
> 
> --
> Thanks,
> Mina
