Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95831CC9CE9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 00:32:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47D8760A7C;
	Wed, 17 Dec 2025 23:32:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_DH-C-L7uFy; Wed, 17 Dec 2025 23:32:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A15EB60B89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766014365;
	bh=OGmfZWtGiWhAo19vEcCHDk44jmJ9wrevbJo4smHkUY4=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=EOGKPlr28xgbbU6Ia40m62qiJxvtm7asEReOWw8WXSuItluhHh/thKKgz/Z8JajDB
	 WOmmhmBz6hIii1elI6YccIP7+zcrKh5sGIYBPV9V5ITPCv9QvQTy+qkITsqS3C/yVe
	 2wtKaC4wmWDt9Oxzrp0qIQew30JD8dTRYeK9SqOKMhYb7lwB53Fy45JvxuYNkVB4rg
	 yVMtg7BIksMiDWZCNhplVUJ5T0ZjpAOS1t2Z86LHXkFcHX/ud/nlTGBfuPeEk4xy7F
	 RFp+zwV5irKrfC1StaDLxMpTQL6a4RTw2qnEnNR/SsMahK7NhTYGMKOt61busVoT3V
	 VgUSqnm658KXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A15EB60B89;
	Wed, 17 Dec 2025 23:32:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 72E19375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 23:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 597C940F6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 23:32:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id moTH4z2xhTPu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 23:32:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::636; helo=mail-ej1-x636.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 395F140F4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 395F140F4E
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 395F140F4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 23:32:42 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-b713c7096f9so3818266b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 15:32:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766014360; x=1766619160;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=OGmfZWtGiWhAo19vEcCHDk44jmJ9wrevbJo4smHkUY4=;
 b=gXyr8PpgomZbM7we2nrZlDmbQgH3WAM4wfMnWAzL3oyQyez0mw6KpNXSXnEJ1INtFX
 z51ffV7hH17xuGVibVamJkaI1mFJ8pl53BTFqUuW6QBR85eIZT7j+wXkOsWbatWKsFRH
 8mmE6eMVDBFu/wsYr1Wa860DJrK4iatWQTXBcTYZanLD/nusiCAmcYr0+brtFB94Fs3l
 KmMKcgcZen4zHBYPQ2bnyl5Un7/JZZo8aQdn5bT4/thOQpf3Pw+8RWlcJ8laqFfrQYqU
 BxTo4XDHwST6k+lsAAGzjXGiWT2QMO14wZXPwJ53Zue4ah8z02+LT4Z9Jnfq6idEGRdM
 Ud3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDnjzQsnATMls0oYusgl/Mx+Q9YeF4/M3VwgkCxqj8B/Nlr9s+BXTBMD/ZLSV6n8FMv/hvl3Jiy09gSi6TZvo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwCTDOJ5NK2oYvuIZNPjdr8P69JOVmlGKM2YWwg7hvMMWIqXTyn
 BSKM5/EOZqi2mKSCGU+TbcPYXIEMbLc3ck8bl8js4FoTRfwiKTEKsqVXyRXmvBd5/fLQaFGWWvM
 0d1OCHUmdj5TAQaxkGwCuw1GBltSB/ARFvJJwXvbqCg==
X-Gm-Gg: AY/fxX6Y6/9ispSG4g4rof5S/2mCKVIyI7Sj8zBOD9kB0bowWFQ+XvD0I6ccwvOQA7S
 nttyxhZOLYhK35JnMMaoRw4EWBGfTN7jWWNMUknh+oos+ktvFoTh3erraekWx4q3Hb8vbEvkZIH
 kZGP7TBl9M9KiTwe/l7El+9WeX6/KKzHC/YH4CAMJTkaQ7U4WkGbQTtylGbl8r9uq/08JFuDEYx
 wgLaR+ZBVrfiwYbWSvixQm1efbGUCGVlCr0b5+BcOR1JFooNc4EmMxXKGq1yI6OSDdmPkzQ/485
 pmtUg40AhUVeEGC8oWjzn/M=
X-Google-Smtp-Source: AGHT+IEV1niauf0Ycz+BUXcGEgs34RfV3dC9r/Q0Mw83iNvRaubmEzXu46/+wtzsicdv8EpfrBLYILi1/KaXLiJOvSc=
X-Received: by 2002:a17:907:bb49:b0:b7f:eb45:f572 with SMTP id
 a640c23a62f3a-b7feb45f993mr792039366b.55.1766014360079; Wed, 17 Dec 2025
 15:32:40 -0800 (PST)
MIME-Version: 1.0
References: <dddf6b9b-74f0-42cc-bf1d-5fc8b8d4df8b@cloudflare.com>
 <3d40d617-a31b-4a7a-86af-66d2c938c114@intel.com>
In-Reply-To: <3d40d617-a31b-4a7a-86af-66d2c938c114@intel.com>
Date: Wed, 17 Dec 2025 15:32:29 -0800
X-Gm-Features: AQt7F2r-FyoapkFVpROlMMGnZJT0UTwq9mPD4TQ_bH6HjPV6AEV8vpI1p6T3bBQ
Message-ID: <CAB1XECX2wzCqJVPBfxPeP_eddjNw1HwUjEj868EHzY=HR=iqqw@mail.gmail.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1766014360; x=1766619160;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OGmfZWtGiWhAo19vEcCHDk44jmJ9wrevbJo4smHkUY4=;
 b=VzjDDxhHPkwQWAkFJb/Myyn2p4mCkymxAN+9OViVzEdxPiK8eV7nQuHQTzjs8c/sX7
 W4qxVLYKkPttzmInR9pibCQzile3o6lhrR319HttvwRojfk6IqjdEGotaFi/AcKKjn+Y
 LeGyM2jti4Qqf1v5mRpBQ6ke/9bFKF3/HuX459lvOyIVOOrdqHEH2g60sLnrFdoWmQoA
 WJPHxAbG8J8Kb38NdeVYCj085mePAlkFROgGs3j8S0gd4Hc0xKpPBhm9V08bCWo94wr7
 fR5KmUxxZOfmPqSOW8LdYCCMMF/RYg+byvSkf1bQOLm0a0E3Zy+ZBhtlh3jJmNgGHjHQ
 foHw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=VzjDDxhH
Subject: Re: [Intel-wired-lan] BUG: ice: E830 fails RSS table adjustment
 with ethtool -X
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
From: Jesse Brandeburg via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 17, 2025 at 3:14=E2=80=AFPM Greenwalt, Paul
<paul.greenwalt@intel.com> wrote:
> On 12/5/2025 11:37 AM, Jesse Brandeburg wrote:
> > Filed at:
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D220839
> >
> > Kernel: stable-6.12.58
> > NIC: E830 100G dual port
> >
> > When trying to adjust RSS table # of queues on E830 with
> >
> > ethtool -X eth0 equal 8
> >
> > we see this error in logs
> >
> >    [ 6112.110022] [ T303140] ice 0000:c1:00.1: Failed to configure RSS
> > hash for VSI 8, error -5
> >     [ 6112.528002] [ T303170] ice 0000:c1:00.0: Failed to configure RSS
> > hash for VSI 6, error -5
> >
> > This command works fine on E810 nics with the same driver.
> >
>
> Hi Jesse,
>
> I have reproduced the issue and I'm looking into.

Great, thanks Paul

Let me know if you need anything from my end.
