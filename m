Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBC868FC6B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 02:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C7B1812EF;
	Thu,  9 Feb 2023 01:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C7B1812EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675904939;
	bh=j5xUv1nVyVsc+RGRyvUyTHleJGo5sHVZEVw04L+S2fU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vtH8JHB841i0L48u1O1dwwwzOoatage6T4DmN56FmfRRVdr+MyK82ZAcEmafZPKjZ
	 8vgH6le0VtVsgj4BBwFgE7OIb5d5v7Af/Adb4CQgE5qqlPitXvcICJCpS4vNDflLUn
	 rWrCyb/OypwFIOft31ET0GP2my0gFldGiFtvbSO6UdW+VRAgp9F/cK9oq9xrYLicBE
	 Pay/lYdqpfFGz1nAl7GMPb1iFlPGN5znPkyysm5eudr9FhM4NF1GK6Qx4PSXTVUn5C
	 +/3IjVsHzajWS2CkNVRkZv1HHcjTlSY7mc1f7WfHbL5pHFLrBnj2TgIxOJuAN3gRh3
	 OU8IPsCTfA0eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gnXQAvEtEn5V; Thu,  9 Feb 2023 01:08:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C7A08131B;
	Thu,  9 Feb 2023 01:08:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C7A08131B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E60C1BF409
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 01:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E1D9611A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 01:08:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E1D9611A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pUzIXV9DgTqW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 01:08:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EB8061019
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EB8061019
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 01:08:53 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id g17so1167790ply.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 17:08:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aeYFdVMeaGXZ8pQboFFMn+nx5SREQ527KN43sqYMZK4=;
 b=RQ2fbgvZMavJ7iLur+iBRLlhO/Xadongkb/e0WCnXFZcCKOf/X+YnCbWwnCg8e/UYL
 hLisGqHOfw34l6oIpAAT4tXph0NuxMsC8z0zDKLpl7+1TaPbFsYY5bYuOQAwKf4LpbtY
 7G/TWlYqeXmWPTPstdiETB6btSkpl0ylbXmzt/VAms19Zyvb2McHCHLHBfTyGYES6v5+
 kiiI+4VoOf5zpN6Xbgr2eh2khfuiWVC6agZfCZfMOBtuGZeMQy0r83+xPF2uO5sElaOK
 JpVDZI6mkjNBRTuwh8yBdijohs1eRIJGNbteWRXGohv47369pvLBKXpKfTnApAfSe7ku
 A8UQ==
X-Gm-Message-State: AO0yUKVHAl594wXKG/kN6i6X/2ZeqeJMCTUu88HoTsZrk0rE65rn0+Qi
 JxhSNleaBR3F/6b8VlXHCjcrhXuXV2ogyRnr5AI=
X-Google-Smtp-Source: AK7set/L/4PK5i4Nk/tyPcro29I7KmIGdPeypqvLUROocj5T/PUnxi+fk2QbitZqJPpg97x6sOnqA/3zjYpVYE3ZEg4=
X-Received: by 2002:a17:90a:3f10:b0:22c:1179:3b8f with SMTP id
 l16-20020a17090a3f1000b0022c11793b8fmr1157190pjc.118.1675904932512; Wed, 08
 Feb 2023 17:08:52 -0800 (PST)
MIME-Version: 1.0
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
 <20230204133535.99921-4-kerneljasonxing@gmail.com>
 <CAL+tcoD9nE-Ad7+XoshoQ8qp7C0H+McKX=F6xt2+UF1BeWXKbg@mail.gmail.com>
In-Reply-To: <CAL+tcoD9nE-Ad7+XoshoQ8qp7C0H+McKX=F6xt2+UF1BeWXKbg@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 8 Feb 2023 17:08:41 -0800
Message-ID: <CAKgT0Uc7d5iomJnrvPdngt6u9ns7S1ismhH_C2R1YWarg04wWg@mail.gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=aeYFdVMeaGXZ8pQboFFMn+nx5SREQ527KN43sqYMZK4=;
 b=m5qVYRU6vrrvo3NCP1kIhk82cUP8n1q+wscOOGZ3Nfs+BH1TzSokfpoFyz7E0llJIA
 elebF+cIMLkX4iASQm6US6FGFeK2eb967qwsEuc6dK+SliWi+3mVW7iNnIsQ8ps5T6Cj
 wooz9gfrvTvIcdOe+VN1eFXF0LrDpvAJH62ZxRIADFWqMfRAMFGWorIAUmIlhJMazU53
 TNRbW+lPDu7Pmr+6HjfwqtrrumxoQuhTSHkGpAu41pIGW84aiZa+ylKWYPH5oeZVYwj/
 J1AllVYSAPExNzjWfNc85MJSUrPWoJcaAqIsJqxf/64ofhZGS9V+CbzrW3J5ePkXNDQa
 HkAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=m5qVYRU6
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] ixgbe: add double of VLAN
 header when computing the max MTU
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
Cc: hawk@kernel.org, daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 8, 2023 at 4:47 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
>
> CC Alexander Duyck
>
> Hello Alexander, thanks for reviewing the other two patches of this
> patchset last night. Would you mind reviewing the last one? :)
>
> Thanks,
> Jason

It looks like this patch isn't in the patch queue at:
https://patchwork.kernel.org/project/netdevbpf/list/

I believe you will need to resubmit it to get it accepted upstream.

The patch itself looks fine. Feel free to add my reviewed by when you submit it.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
