Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB818687E56
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 14:12:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37B70405EF;
	Thu,  2 Feb 2023 13:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37B70405EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675343520;
	bh=So/lOBwI60AJFXNkFTtUrQdgdpaT4FUC2doU2Ccz51o=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xF4hwQoE8EGsKWCY0Hmxuj/vZkcj2qI5oBDKrwbWINOjp1mNZ+nSsbLMg3TAt952g
	 2w+Tjh8prQsgbsM0m4riKDDWI/G7rNmjaB5uJoOFONvkZOifr5Ug7IEpGN9RY4holA
	 nxh6bDIhzPj4xEW9I8we3sAin6LNPIfXzBo/bN87GSdEi3zeqd2FAfMXTcAAXIehCx
	 xmYPMwt2JlfQ26L8A+T1TDXQO1QpWrt9GkGFyovV4hW6puhLYN9geHHwQD4IIITSdX
	 b+5esHPFQyDpUml1pBfR2hO0FxMiVjzsBwMyUKN/Nl9LPds5wfZ3cD7/lGtKUaRoOQ
	 t961J2NZ0DIIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ooh0OCeKN9RG; Thu,  2 Feb 2023 13:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE07B40120;
	Thu,  2 Feb 2023 13:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE07B40120
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2A3F1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 13:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87DE781F3F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 13:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87DE781F3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ryCAy6HsC48F for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 13:11:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A20AF81F27
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A20AF81F27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 13:11:48 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id me3so5792533ejb.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Feb 2023 05:11:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=a+cCNsETz45YshQhIXFqkY19MDAG9vwzg6TDida0acI=;
 b=wk5SUMsHn0v26H3hIflZiZEuhNPSgnuzmGLDoMA0vimjcDWWKBaJ1m5RJyZvfDjSKq
 9yiGF2vGbhu5GLMj5rtLIy5vG7wAlmYAmCdIlKFcaZN8ASS5Pac0gbX3w0kaMCZnH7yP
 SdEUXl1S4GsnuH0R0ppVwnD9ukhHKmMe2RgemOYCdzUkR6AmoQUo/iisGaPXN5JbVJ7T
 nT2qKHzzi+qEur2Cvr8M+AB+kkAeRmmP10oUA9WruqeQvj8OCozfaYeFk812qclP3znJ
 N1alZn9lGukXk7t+uZzrIxCdyISrlF8U7a694k2uWYBbNkSTPL4rB3gV9pW72CDHofi5
 QXJQ==
X-Gm-Message-State: AO0yUKWUzvCJBmpUuyn3BWh7sHgbEDJ0jq9CL5zlWV1SC0UldRYBxJVw
 wyyj4ImOfJogx1aDlWkKPphwMxlHYy5QN68+mcw=
X-Google-Smtp-Source: AK7set9hD1sKrfL/oqG07C+GcTpdhn1+P/ka9gwI6H5WuilXBISkfu4T376/iB14fVp+Mh1YUyv8+OJ4heqzUo3pa44=
X-Received: by 2002:a17:906:8395:b0:888:f761:87aa with SMTP id
 p21-20020a170906839500b00888f76187aamr2079361ejx.163.1675343506695; Thu, 02
 Feb 2023 05:11:46 -0800 (PST)
MIME-Version: 1.0
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
 <Y9fdRqHp7sVFYbr6@boxer>
 <CAL+tcoBbUKO5Y_dOjZWa4iQyK2C2O76QOLtJ+dFQgr_cpqSiyQ@mail.gmail.com>
 <192d7154-78a6-e7a0-2810-109b864bbb4f@intel.com>
 <CAL+tcoBtQSeGi5diwUeg1LryYsB2wDg1ow19F2eApjh7hYbcsA@mail.gmail.com>
 <af77ad0e-fde7-25da-dc3f-5d19133addba@intel.com>
In-Reply-To: <af77ad0e-fde7-25da-dc3f-5d19133addba@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 2 Feb 2023 21:11:10 +0800
Message-ID: <CAL+tcoCXFtTATi_=h5Yoh3DUx4NeTDG4SexA=0HP8z99TkipLA@mail.gmail.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=a+cCNsETz45YshQhIXFqkY19MDAG9vwzg6TDida0acI=;
 b=FDvJZDzGsgAEMjCpCqlqBT+PBl4a2blZbOek7/96cShN4m9VVf8llxb4QL91Q2pREM
 IZwYiBAF8Va8EKeZYQqwWF/P2izfpuHDvAMJCnbeR3Sz101I+OyLJGiQpeVnSwDlnzDw
 q/nwcIkSRIQZaWeopYQeSb9MH+OqsFO9jg7kJBZhMOm3qV6IuGEgUgvLFAtuf0SMJPQR
 umCYMBYnLJ4iLwx7HEWba+Y8wF8RrL0ZjbK+gEYMj82Q3M1CLrBYaQyEXpLFiIH0yQ9R
 beFI4wX3Eb64ocRKgbd2Oaba9NFGzek6sR2+pIk2RTZAYwNUJn6lPSPddXeR13scxzhk
 ty5g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=FDvJZDzG
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ixgbe: allow to increase MTU
 to some extent with XDP enabled
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 1, 2023 at 7:15 PM Alexander Lobakin
<alexandr.lobakin@intel.com> wrote:
>
> From: Jason Xing <kerneljasonxing@gmail.com>
> Date: Tue, 31 Jan 2023 19:23:59 +0800
>
> > On Tue, Jan 31, 2023 at 7:08 PM Alexander Lobakin
> > <alexandr.lobakin@intel.com> wrote:
>
> [...]
>
> >>>> You said in this thread that you've done several tests - what were they?
> >>>
> >>> Tests against XDP are running on the server side when MTU varies from
> >>> 1500 to 3050 (not including ETH_HLEN, ETH_FCS_LEN and VLAN_HLEN) for a
> >>
> >
> >> BTW, if ixgbe allows you to set MTU of 3050, it needs to be fixed. Intel
> >> drivers at some point didn't include the second VLAN tag into account,
> >
> > Yes, I noticed that.
> >
> > It should be like "int new_frame_size = new_mtu + ETH_HLEN +
> > ETH_FCS_LEN + (VLAN_HLEN * 2)" instead of only one VLAN_HLEN, which is
> > used to compute real size in ixgbe_change_mtu() function.
> > I'm wondering if I could submit another patch to fix the issue you
> > mentioned because the current patch tells a different issue. Does it
> > make sense?
>
> Yes, please send as a separate patch. It's somewhat related to the
> topic, but better to keep commits atomic.

Hi Alexander,

I'm not sure if I should wait for the current patch to get reviewed,
then I'll write the vlan related patch we talked about based on the
current patch?

Thanks,
Jason

>
> >
> > If you're available, please help me review the v3 patch I've already
> > sent to the mailing-list. Thanks anyway.
> > The Link is https://lore.kernel.org/lkml/20230131032357.34029-1-kerneljasonxing@gmail.com/
> > .
> >
> > Thanks,
> > Jason
>
> Thanks,
> Olek
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
