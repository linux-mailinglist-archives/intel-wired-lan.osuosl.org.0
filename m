Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CAB67DCD1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 05:16:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C2AB60C31;
	Fri, 27 Jan 2023 04:16:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C2AB60C31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674793011;
	bh=xmYqQovI2w+MsQuASzlSJVEvgHqiqOY65u1N7L7ycmM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KwfA25pY6xEfvgvPt/BGiq1fSQ/YG9wqTkZBHnpbVDd63cZb+n/VXN++wVsk2RiD4
	 VPJ1g3cLcpMSrL4aj+j0PyRO7bLdf5OVAlsNV2PSxiMBkXBc2snUdUWsW6kyuElQuD
	 6EhGGWI/OM3/dlmTApNU5knTlntPgdzaL+unwVlsGy1/SWcU9CjOcHfYsXrvYe+thl
	 PGUllYghXDbjlzVeCc2+wKR40QhBaRTXDzdzqWLLbtmUcFYj/RhfFYWGa7LUoxeM8T
	 krs/14DAOPTeKaoIq2VXFPapO3/CfV9jECfTj7e5iAYsQtgFZKSSuSIjQockk7XQF3
	 dCJemnmuz5xXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iQCB2EVtDjAM; Fri, 27 Jan 2023 04:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 394BA60C0B;
	Fri, 27 Jan 2023 04:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 394BA60C0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB0041BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 04:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EAE68268B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 04:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EAE68268B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ftqv7c2bzYBZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 04:16:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82FF582681
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 82FF582681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 04:16:44 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id v6so10500155ejg.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 20:16:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pCPg4p/kNjS/XcZm5od+BEqI0eRA9tT6yJAnZLVLufo=;
 b=E/7F9J7PtrYtASkI4xgBOj9pQqH12vd9LiJ+IC0Tq5095eUpXFWbcSJUQQJV+hWRcd
 lvNhL03wMZjXdpZX7gysnEWBrTF5lf/fTIB1eLDGlgNpvcb2OsX+tsdhYb9PyxCXs/We
 IiZaAzK4dq8wvlJWq1u8QPpcwvXyzWad9C8wS1O26chmyli+Zp1mNuX/94nNzvj4379x
 WKqHbeyhm0MdHIQQSBCnWMTIIGc+RZhIbfIgb89d8jmdb3Nu1GWt1mPXcK21H7IIydyK
 CEMwq/Q5hOxWwCdr7Io+IDiLbcmebf/Itihfo6Pq7EBrt/g5zJ9AGach76p/cXy2V9do
 z/0Q==
X-Gm-Message-State: AFqh2krbop7tbbBDulV4WMOiE0BnvPz7am/H66ONhiZCwjFek+p7t+qX
 igdgd7yWVAwCfD+dDoRYzTaz7EoXIci0iWp0V1c=
X-Google-Smtp-Source: AMrXdXtS93XYT2PTeYAhswaSqtGBBNjGjzbSX2zXwaBaiv1xo/CoL2aXV/Thiix7NKQbiSLkQPk4A5chCCSzRBz7TP8=
X-Received: by 2002:a17:906:7d14:b0:86f:9fb1:30a8 with SMTP id
 u20-20020a1709067d1400b0086f9fb130a8mr5599478ejo.181.1674793002473; Thu, 26
 Jan 2023 20:16:42 -0800 (PST)
MIME-Version: 1.0
References: <20230121085521.9566-1-kerneljasonxing@gmail.com>
 <Y9JvUKBgBifiosOa@boxer> <48639eb0-27d9-5754-0687-286e909ceff0@intel.com>
In-Reply-To: <48639eb0-27d9-5754-0687-286e909ceff0@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 27 Jan 2023 12:16:06 +0800
Message-ID: <CAL+tcoD2wNOS-Tg+A94naTP2QtVmcoDLZTpapRiD4PVkW3H5eQ@mail.gmail.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=pCPg4p/kNjS/XcZm5od+BEqI0eRA9tT6yJAnZLVLufo=;
 b=XXpkOMwOgo0LHzHR/loDFVHUu5rPtT+qqbPGwCH73uVWNDGczt3AMcYqY2IRWlXPnI
 dg5++kJa018KtzQdnQCDIEIqJwilrAFYDoev57v/iwQxqtGhE5AwQE4V5nzmikM/aEOU
 upnNhEuBKgvqzYUFVcDkkxUlf6DfH/3F/CFY5A17at704BCfGkVLR9vnH6jg7fNj7ZW1
 rMirPTM01DJ7cEkflA1z9BZ3fa3SejeFjhVmkrE3OH21lUS6aHcPz3ilT1czvh1f/x6H
 4faGHdWRljQfJi45c3ZMh964EC7IaFLfaXdVuvOIYFd0Du/LJtaeAtI/FBGimONmURs3
 sFyg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XXpkOMwO
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: allow to increase MTU to
 some extent with XDP enalbed
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: hawk@kernel.org, daniel@iogearbox.net, tirthendu.sarkar@intel.com,
 intel-wired-lan@lists.osuosl.org, richardcochran@gmail.com,
 jesse.brandeburg@intel.com, ast@kernel.org, edumazet@google.com,
 john.fastabend@gmail.co, anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 26, 2023 at 11:56 PM Alexander Lobakin
<alexandr.lobakin@intel.com> wrote:
>
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Date: Thu, 26 Jan 2023 13:17:20 +0100
>
> > On Sat, Jan 21, 2023 at 04:55:21PM +0800, Jason Xing wrote:
> >> From: Jason Xing <kernelxing@tencent.com>
> >>
> >> I encountered one case where I cannot increase the MTU size with XDP
> >> enabled if the server is equipped with IXGBE card, which happened on
> >> thousands of servers. I noticed it was prohibited from 2017[1] and
> >> added size checks[2] if allowed soon after the previous patch.
> >>
> >> Interesting part goes like this:
> >> 1) Changing MTU directly from 1500 (default value) to 2000 doesn't
> >> work because the driver finds out that 'new_frame_size >
> >> ixgbe_rx_bufsz(ring)' in ixgbe_change_mtu() function.
> >> 2) However, if we change MTU to 1501 then change from 1501 to 2000, it
> >> does work, because the driver sets __IXGBE_RX_3K_BUFFER when MTU size
> >> is converted to 1501, which later size check policy allows.
> >>
> >> The default MTU value for most servers is 1500 which cannot be adjusted
> >> directly to the value larger than IXGBE_MAX_2K_FRAME_BUILD_SKB (1534 or
> >> 1536) if it loads XDP.
> >>
> >> After I do a quick study on the manner of i40E driver allowing two kinds
> >> of buffer size (one is 2048 while another is 3072) to support XDP mode in
> >> i40e_max_xdp_frame_size(), I believe the default MTU size is possibly not
> >> satisfied in XDP mode when IXGBE driver is in use, we sometimes need to
> >> insert a new header, say, vxlan header. So setting the 3K-buffer flag
> >> could solve the issue.
> >>
> >> [1] commit 38b7e7f8ae82 ("ixgbe: Do not allow LRO or MTU change with XDP")
> >> [2] commit fabf1bce103a ("ixgbe: Prevent unsupported configurations with
> >> XDP")
> >>
> >> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> >> ---
> >>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> index ab8370c413f3..dc016582f91e 100644
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> @@ -4313,6 +4313,9 @@ static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
> >>              if (IXGBE_2K_TOO_SMALL_WITH_PADDING ||
> >>                  (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
> >>                      set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
> >> +
> >> +            if (ixgbe_enabled_xdp_adapter(adapter))
> >> +                    set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
> >
> > This will result with unnecessary overhead for 1500 MTU because you will
> > be working on order-1 pages. Instead I would focus on fixing
> > ixgbe_change_mtu() and stop relying on ixgbe_rx_bufsz() in there. You can
> > check what we do on ice/i40e sides.

Well, now I see the commit 23b44513c3e6f in 2019. Thanks, Maciej.

> >
> > I'm not looking actively into ixgbe internals but I don't think that there
> > is anything that stops us from using 3k buffers with XDP.
>
> I think it uses the same logics as the rest of drivers: splits a 4k page
> into two 2k buffers when MTU is <= 1536, otherwise uses order-1 pages
> and uses 3k buffers.
>
> OTOH ixgbe is not fully correct in terms how it calculates Rx headroom,
> but the main problem is how it calculates the maximum MTU available when
> XDP is on. Our usual MTU supported when XDP is on is 3046 bytes.
> For MTU <= 1536, 2k buffers are used even for XDP, so the fix is not
> correct. Maciej is right that i40e and ice do that way better and don't
> have such issue.

Thank you for the detailed explanation. And yes, I checked this part
in the ice/i40e driver which introduces ice/i40e_max_xdp_frame_size()
to test if we can change MTU size when the driver is loading the XDP
program.
I will rewrite the patch as the i40e/ice does in the next submission.

Thanks,
Jason

>
> >
> >>  #endif
> >>      }
> >>  }
> >> --
> >> 2.37.3
> >>
>
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
