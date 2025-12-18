Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B424ACC9E9B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 01:40:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD0BA40285;
	Thu, 18 Dec 2025 00:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jJODUHYNSVXA; Thu, 18 Dec 2025 00:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C984140288
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766018444;
	bh=fXCWxr8wk31uRekoiYKfH0Bs95qomfGEKJoZ1t3+v4c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d7gZmcuQ1jy6ZQ7c0EnSQDA6mnlA3YVMkNtCBIxcM9IRKxvvI6SQYzItvxgdH+vtH
	 arwUgRIfpsDjNL00ZE7i7HwC11slJ+wKuJoZpNPK5HwgPzF2LlGLfWJgx5VVUF6XSV
	 FPRdrRjVAmz5H8gDnF/q+fg32u9X6YwGDINggVBrjvC/YDEZ/2Smtw4wk9pTqON3MV
	 VokM8MwbTUo1vDbXgshwTvyQdC6tUeozUVcyMIJS4wqjwI9D7tT6hEVjtmohrbsREj
	 nc9an9Fq3xORvJZLxUGhuu+TvLKsHuBKIaiLEnZYl0OJ+Y79/tpf5WhCbGIs1iFxCW
	 5S7y+vfskDzoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C984140288;
	Thu, 18 Dec 2025 00:40:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DDB97361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4A4340269
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WU6z-93WN_8t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 00:40:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 422BC403FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 422BC403FF
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 422BC403FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:40:40 +0000 (UTC)
X-AuditID: a67dfc5b-c45ff70000001609-bb-69434d867f31
Date: Thu, 18 Dec 2025 09:40:33 +0900
From: Byungchul Park <byungchul@sk.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Pavel Begunkov <asml.silence@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel_team@skhynix.com" <kernel_team@skhynix.com>,
 "harry.yoo@oracle.com" <harry.yoo@oracle.com>,
 "david@redhat.com" <david@redhat.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "toke@redhat.com" <toke@redhat.com>,
 "almasrymina@google.com" <almasrymina@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Message-ID: <20251218004033.GB15390@system.software.com>
References: <20251216040723.10545-1-byungchul@sk.com>
 <IA3PR11MB898618246F68FA71AF695B3DE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <39e285e0-81b7-47b2-b36f-50de7e51f95b@gmail.com>
 <IA3PR11MB898609A6FA1E75B5C87C27C2E5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB898609A6FA1E75B5C87C27C2E5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsXC9ZZnkW6br3OmwZ9TKhaHj2xitlj9o8Ji
 +YMdrBa7L/xgspizahujxZzzLSwWX9f/YrZ4euwRu8X9Zc9YLP7f+s1qcWFbH6vF5V1z2CyO
 LRCz+Hb6DaPF7aVXmSwuHX7EYvH7xxw2B0GPLStvMnnsnHWX3WPBplKPzSu0PBbvecnksWlV
 J5vHyeZSj507PjN5fHx6i8Xj/b6rbB6fN8kFcEdx2aSk5mSWpRbp2yVwZfw+eYaloEe3YtnW
 VsYGxmkqXYycHBICJhL7TsxggbGPnH/IBGKzCKhKLP3yjxHEZhNQl7hx4ycziC0iYCUx8eMm
 oBouDmaBq2wSkw+fA0pwcAgLpEqcXuYIUsMrYCExb/8dZpAaIYE+JomtG/oYIRKCEidnPgFb
 xgw09M+8S2C9zALSEsv/cUCE5SWat84G28UpECtx/MEvsFZRAWWJA9uOg+2VEFjHLvFoyg9W
 iKMlJQ6uuMEygVFwFpIVs5CsmIWwYhaSFQsYWVYxCmXmleUmZuaY6GVU5mVW6CXn525iBMbo
 sto/0TsYP10IPsQowMGoxMPrMNspU4g1say4MvcQowQHs5IIr8FZoBBvSmJlVWpRfnxRaU5q
 8SFGaQ4WJXFeo2/lKUIC6YklqdmpqQWpRTBZJg5OqQbGkDeB+3UOWbjluG5Lmla/6Pc17b2t
 lcUcq62PuejlB0su3cHlbbNp4l23z7HLeRJfeem9llRmtDj5Ipw1+9GJXL7DVgef/nqzaKHW
 UyP9So4ni3d5nz1zOzDIo8DtfthDi5zG8hvs70q086c19nz/9eJtpdNawz3Ltz7uZv60RVVR
 btWTm2+dlViKMxINtZiLihMBWT20qc0CAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsXC5WfdrNvm65xpcKhD1OLwkU3MFqt/VFgs
 f7CD1WL3hR9MFnNWbWO0mHO+hcXi6/pfzBZPjz1it7i/7BmLxf9bv1ktDs89yWpxYVsfq8Xl
 XXPYLI4tELP4dvoNo8XtpVeZLC4dfsRi8fvHHDYHIY8tK28yeeycdZfdY8GmUo/NK7Q8Fu95
 yeSxaVUnm8fJ5lKPnTs+M3l8fHqLxeP9vqtsHotffGDy+LxJLoAnissmJTUnsyy1SN8ugSvj
 98kzLAU9uhXLtrYyNjBOU+li5OSQEDCROHL+IROIzSKgKrH0yz9GEJtNQF3ixo2fzCC2iICV
 xMSPm4BquDiYBa6ySUw+fA4owcEhLJAqcXqZI0gNr4CFxLz9d5hBaoQE+pgktm7oY4RICEqc
 nPmEBcRmBhr6Z94lsF5mAWmJ5f84IMLyEs1bZ4Pt4hSIlTj+4BdYq6iAssSBbceZJjDyzUIy
 aRaSSbMQJs1CMmkBI8sqRpHMvLLcxMwcU73i7IzKvMwKveT83E2MwIhbVvtn4g7GL5fdDzEK
 cDAq8fB6LHLKFGJNLCuuzD3EKMHBrCTCa3AWKMSbklhZlVqUH19UmpNafIhRmoNFSZzXKzw1
 QUggPbEkNTs1tSC1CCbLxMEp1cDIOGFl0ozc5w/+S8j6fUl4q/jHZdeklE+CNS/vvPjWsj3u
 R7b9j138Cu9d9jlpzJ8j/unEe/3y2XpVSyoP/2v7LBwm3dFtGMoTlfac8aTvhObDy4PnbpPo
 89Dn3rx+q3GmJvsF4SgDhhVWDCcqJ6uy5Qd+jv9WselKWO/SbWYVtQbK687P/tSqxFKckWio
 xVxUnAgARdDyybQCAAA=
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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

On Wed, Dec 17, 2025 at 02:34:14PM +0000, Loktionov, Aleksandr wrote:
> > -----Original Message-----
> > From: Pavel Begunkov <asml.silence@gmail.com>
> > Sent: Wednesday, December 17, 2025 2:16 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Byungchul
> > Park <byungchul@sk.com>; netdev@vger.kernel.org; kuba@kernel.org
> > Cc: linux-kernel@vger.kernel.org; kernel_team@skhynix.com;
> > harry.yoo@oracle.com; david@redhat.com; willy@infradead.org;
> > toke@redhat.com; almasrymina@google.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
> > wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp
> > through netmem_desc instead of page
> >
> > On 12/17/25 11:46, Loktionov, Aleksandr wrote:
> > >
> > >
> > >> -----Original Message-----
> > >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > Behalf
> > >> Of Byungchul Park
> > >> Sent: Tuesday, December 16, 2025 5:07 AM
> > >> To: netdev@vger.kernel.org; kuba@kernel.org
> > >> Cc: linux-kernel@vger.kernel.org; kernel_team@skhynix.com;
> > >> harry.yoo@oracle.com; david@redhat.com; willy@infradead.org;
> > >> toke@redhat.com; asml.silence@gmail.com; almasrymina@google.com;
> > >> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > >> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > >> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
> > >> wired-lan@lists.osuosl.org
> > >> Subject: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
> > >> netmem_desc instead of page
> > >>
> > >> To eliminate the use of struct page in page pool, the page pool
> > users
> > >> should use netmem descriptor and APIs instead.
> > >>
> > >> Make ice driver access @pp through netmem_desc instead of page.
> > >>
> > > Please add test info: HW/ASIC + PF/VF/SR-IOV, kernel version/branch,
> > exact repro steps, before/after results (expected vs. observed).
> > >
> > >> Signed-off-by: Byungchul Park <byungchul@sk.com>
> > >> ---
> > >>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
> > >>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >>
> > >> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > >> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > >> index 969d4f8f9c02..ae8a4e35cb10 100644
> > >> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > >> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > >> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct
> > >> ice_rx_ring *rx_ring)
> > >>            rx_buf = &rx_ring->rx_fqes[i];
> > >>            page = __netmem_to_page(rx_buf->netmem);
> > >>            received_buf = page_address(page) + rx_buf->offset +
> > >> -                         page->pp->p.offset;
> > >> +                         pp_page_to_nmdesc(page)->pp->p.offset;
> > > If rx_buf->netmem is not backed by a page pool (e.g., fallback
> > allocation), pp will be NULL and this dereferences NULL.
> > > I think the loopback test runs in a controlled environment, but the
> > code must verify pp is valid before dereferencing.
> > > Isn't it?
> >
> > Considering "page->pp->p.offset" poking into the pool, if that can
> > happen it's a pre-existing problem, which should be fixed first.
> >
> > --
> > Pavel Begunkov
> 
> 
> Good day, Hi Byungchul, Pavel,

Hi,

> Thanks for pushing the driver toward netmem — I fully support removing direct struct page accesses from the networking stack.
> 
> Regarding this change in ice_lbtest_receive_frames():
> 
>         received_buf = page_address(page) + rx_buf->offset +
>                 pp_page_to_nmdesc(page)->pp->p.offset;
> 
> Pavel, you're right that if page->pp could be NULL, it's a pre-existing bug that should be fixed.
> However, looking at the loopback test path, I'm concerned this code doesn't handle non-page-pool allocations safely.
> 
> The netmem model explicitly allows for buffers that aren't page-pool backed.
> While the loopback test likely runs in a controlled environment, the code should verify pp is valid before dereferencing,
> or use the netmem helpers that handle this gracefully:

If it's true, yeah, it definitely should be fixed but in a separate
patch since it's a different issue.  Let's try with a follow-up patch on
top after :-)

>         struct netmem_desc *ndesc = __netmem_to_nmdesc(rx_buf->netmem);
>         void *addr = netmem_address(rx_buf->netmem);
>         struct page_pool *pp;
> 
>         if (!addr)
>                 continue; /* unreadable netmem */
> 
>         pp = __netmem_get_pp(ndesc);
>         received_buf = addr + rx_buf->offset + (pp ? pp->p.offset : 0);
> 
> Alternatively, guard the existing code with page_pool_page_is_pp(page) before calling pp_page_to_nmdesc().
> 
> This would complete the netmem conversion while fixing the unsafe dereference,
> aligning with Matthew's earlier suggestion to use descriptor/address accessors.

Pavel's opinion is that the current way is more appropriate.  Which one
should it go for?

> Also, please add test details to the commit message:

This patch is more like a cleaning patch rather than a performance one.
Please tell me in more detail if you have any test to ask me to perform
for some reasons.

> HW/ASIC (e.g., E810/E823)
> PF vs VF, SR-IOV configuration
> Kernel tree/commit (net-next @ <sha>)
> Repro steps: ethtool -t $dev offline
> Before/after behavior
> Happy to review v2 with these changes.

Thanks for the review comment!

	Byungchul

> Best regards,
> Alex
