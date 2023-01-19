Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D72A673E39
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 17:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F0B541043;
	Thu, 19 Jan 2023 16:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F0B541043
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674144439;
	bh=xlrfuvpVMRTCTyvgLEniFv9Xqzl9QAvvHO8Pd049jQU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xWrhA03xsSodt+QCMnq/AIZvVp25cv+9XFVNI9w1El4VhBfl+vcp6i02EfGifkkj6
	 eveHIN2a5FRT5luFmM8okDFE7EfpNDKLTMAc93Hp66AfckGcGTMnYNo60Q6k5Q/+oO
	 6xa3EzdMI6TY/GDCSKJyzTyobOLsNWlvdOjLP8UGPop/7L/5FWfXxfXks6DZj/SXSe
	 eAKS8fpVdkSFIZgxy1pJrLX6MnUNRdkAfUEJKMl64NaNWlKTxUIfk5ygtn+uiWZwkK
	 cnDAC+PXq8+YcT+ckKQw21ka28IQuXYwxCKKrQ47uxaE/QuNPrGbZajLlGrZp4WcUZ
	 xwtDcW6hmUSww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZgenNf7_M0vt; Thu, 19 Jan 2023 16:07:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8151B41022;
	Thu, 19 Jan 2023 16:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8151B41022
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4C4C1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46791821B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46791821B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NgNzog5yBaVD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 09:39:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AF45821AD
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AF45821AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:39:37 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-42-M9ZfL57LPJW0pvNs6dhBAw-1; Thu, 19 Jan 2023 04:39:33 -0500
X-MC-Unique: M9ZfL57LPJW0pvNs6dhBAw-1
Received: by mail-pl1-f200.google.com with SMTP id
 j16-20020a170902da9000b00194c056109eso1098679plx.18
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=J/ChhZxDJZuEORf8farkuxzgJiMR/obZmOs0mGamXtg=;
 b=Rt1hxOjhho5MFILMyrLwPrwJ7Sp1pTIgjCspNeG9UGCM71h1xfKYiv2gddEVek5tqz
 uwv6zbJLydt/CI0xvKJxmkoxGNgsoFN6uGBCPPjlybsjpEHU2oOU3MgCf6plI3TA+Eaa
 7aPLk/dDzImbRE/DZfyG7u06UnU/pxuX9ILittbDKBJYs050Vfb08oVnGpeRsIBZalfh
 dKcQ82mrC3nMPw5zmAZXU9m/IU/BCoRnAVP2m7NvvtC8RsyKKYEnXiuhYdzM/CSae/Ds
 5Phwe6GijzopMWUJNmZyfFnUOoJ3YgPoMva5x6vqe3mS7FxMBJ51qlRRpIbNrWov73/s
 mSGA==
X-Gm-Message-State: AFqh2kpCdnROfd3KE7ZMdiuC3XmAU+vlM542dj5jwpe0UpZSIFKxLGIT
 jcRf3c1oIyQOfc5rQpeBpAaxtTyJjRLJ+JadV2cYEUgQrALCzK0AbDQmPJcA0aBIG3LthQh3E5u
 dvVmRJlxxKpVwquO2olZ61gzDexkK8oUlbyK7fTphncp3AA==
X-Received: by 2002:a17:902:7fc2:b0:193:1c8f:1840 with SMTP id
 t2-20020a1709027fc200b001931c8f1840mr910007plb.45.1674121172059; 
 Thu, 19 Jan 2023 01:39:32 -0800 (PST)
X-Google-Smtp-Source: AMrXdXspRmFPMIcgKeh99fbH2SIAKrEAw490iJb/gxDbOUZm7zM5B9QAclLluPcX2iXs0Axru9c5FrksZgsFQtOUUg8=
X-Received: by 2002:a17:902:7fc2:b0:193:1c8f:1840 with SMTP id
 t2-20020a1709027fc200b001931c8f1840mr910002plb.45.1674121171857; Thu, 19 Jan
 2023 01:39:31 -0800 (PST)
MIME-Version: 1.0
References: <20230117181533.2350335-1-neelx@redhat.com>
 <2bdeb975-6d45-67bb-3017-f19df62fe7af@intel.com>
 <CACjP9X-hKf8g2UqitV8_G7WQW7u6Js5EsCNutsAMA4WD7YYSwA@mail.gmail.com>
 <42e74619-f2d0-1079-28b1-61e9e17ae953@intel.com>
 <CACjP9X8SHZAd_+HSLJCxYxSRQuRmq3r48id13r17n2ehrec2YQ@mail.gmail.com>
 <820cf397-a99e-44d4-cf9e-3ad6876e4d06@intel.com>
In-Reply-To: <820cf397-a99e-44d4-cf9e-3ad6876e4d06@intel.com>
From: Daniel Vacek <neelx@redhat.com>
Date: Thu, 19 Jan 2023 10:38:55 +0100
Message-ID: <CACjP9X_v9AFVNRgz2a-qJce+ZqR0TzRzyd4gPFufESoRXmCdJQ@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 19 Jan 2023 16:07:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674121176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=J/ChhZxDJZuEORf8farkuxzgJiMR/obZmOs0mGamXtg=;
 b=hEGku88MaEoa5MePuKGN/Z/6IA0XFTr6S6Z0sLWUr9AXxiIrq2cBM24o7wnPBpxQtKIMcw
 ANyJW6MUF0LpaM8s49ZXfp/Wvjr3od6VV+sKBogrKzyjF3dlgciXsK6Qj8CDPPIOUKVLfv
 4Mo9eymoqwWCVCFP6v/2LLmQXHnUdEI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hEGku88M
Subject: Re: [Intel-wired-lan] [PATCH] ice/ptp: fix the PTP worker retrying
 indefinitely if the link went down
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Siddaraju <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 18, 2023 at 11:22 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> On 1/18/2023 2:11 PM, Daniel Vacek wrote:
> > On Wed, Jan 18, 2023 at 9:59 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> >> On 1/18/2023 7:14 AM, Daniel Vacek wrote:
> >> 1) request tx timestamp
> >> 2) timestamp occurs
> >> 3) link goes down while processing
> >
> > I was thinking this is the case we got reported. But then again, I'm
> > not really experienced in this field.
> >
>
> I think it might be, or at least something similar to this.
>
> I think that can be fixed with the link check you added. I think we
> actually have a copy of the current link status in the ice_ptp or
> ice_ptp_tx structure which could be used instead of having to check back
> to the other structure.

If you're talking about ptp_port->link_up that one is always false no
matter the actual NIC link status. First I wanted to use it but
checking all the 8 devices available in the dump data it just does not
match the net_dev->state or the port_info->phy.link_info.link_info

crash> net_device.name,state 0xff48df6f0c553000
  name = "ens1f1",
  state = 0x7,    // DOWN
crash> ice_port_info.phy.link_info.link_info 0xff48df6f05dca018
  phy.link_info.link_info = 0xc0,    // DOWN
crash> ice_ptp_port.port_num,link_up 0xff48df6f05dd44e0
  port_num = 0x1
  link_up = 0x0,    // False

crash> net_device.name,state 0xff48df6f25e3f000
  name = "ens1f0",
  state = 0x3,    // UP
crash> ice_port_info.phy.link_info.link_info 0xff48df6f070a3018
  phy.link_info.link_info = 0xe1,    // UP
crash> ice_ptp_port.port_num,link_up 0xff48df6f063184e0
  port_num = 0x0
  link_up = 0x0,    // False

crash> ice_ptp_port.port_num,link_up 0xff48df6f25b844e0
  port_num = 0x2
  link_up = 0x0,    // False even this device is UP
crash> ice_ptp_port.port_num,link_up 0xff48df6f140384e0
  port_num = 0x3
  link_up = 0x0,    // False even this device is UP
crash> ice_ptp_port.port_num,link_up 0xff48df6f055044e0
  port_num = 0x0
  link_up = 0x0,    // False even this device is UP
crash> ice_ptp_port.port_num,link_up 0xff48df6f251cc4e0
  port_num = 0x1
  link_up = 0x0,
crash> ice_ptp_port.port_num,link_up 0xff48df6f33a9c4e0
  port_num = 0x2
  link_up = 0x0,
crash> ice_ptp_port.port_num,link_up 0xff48df6f3bb7c4e0
  port_num = 0x3
  link_up = 0x0,

In other words, the ice_ptp_port.link_up is always false and cannot be
used. That's why I had to fall back to
hw->port_info->phy.link_info.link_info

--nX

> I'm just hoping not to re-introduce bugs related to the hardware
> interrupt counter that we had which results in preventing all future
> timestamp interrupts.
>
> > --nX
> >
> >> 1) link down
> >> 2) request tx timestamp rejected
> >>
> >> Thanks!
> >>
> >> -Jake
> >
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
