Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0987A117DF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 04:37:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27BC761066;
	Wed, 15 Jan 2025 03:37:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S858TXmzzdYp; Wed, 15 Jan 2025 03:37:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC60661068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736912237;
	bh=Zj0+YrUHmRLNjBOy9TBhk4AoGWmWhd9y5NPFHsoWxMk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E/3fXLQ+NqBsQkVGLyYL4Lo7Ob731nPrh7Ha88E4jJl/hEagpRiJ8DTALIKJO0HRo
	 VMtR1tYCwXgRx2NcK0WojKaBYEdCpJjwtG6L2psy5opT7EPt+1CHtM30IEl63sbUaZ
	 v/uQQDfNG6onCd8wEB4bmrv5RARKd+n7r0DoNfqcAcphoA+tPLkv2sDpfoopQx9Ne6
	 f2V2k6Av4KnLL3L5h1vTVPaKyLiMeOqsOdb+Lt6KgOmcfyzHMGEX7eAfCBlbxvymCs
	 e8up2pQnkZOLDwhnLA7/h81GXdmAITN1kLdeXZveIr/buxJOoh+mgeg56i3001dOL9
	 zWUgxD2+6W8sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC60661068;
	Wed, 15 Jan 2025 03:37:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 318FFB89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 03:37:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 088F24102A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 03:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlEyYfl8hvcg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 03:37:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=dheeraj.linuxdev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7DD3F40176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DD3F40176
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7DD3F40176
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 03:37:14 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-2166f1e589cso133840325ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 19:37:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736912234; x=1737517034;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Zj0+YrUHmRLNjBOy9TBhk4AoGWmWhd9y5NPFHsoWxMk=;
 b=NeuKUT5mG08WSIeRC4c6fNGajRwkbRbISsRTd3ec6FOA+Ugi3LJy/ZoOg+VrvAUsBI
 QTuiGRYeFUAVbszBmAr3DLPtKTJc5HYjehRYYj5GWb88ikfWAiTEnLZM6v11Dy/imphj
 zvh3z5LT1kcgA25fb3Zfgpe5Aw05ivTH+MfWAgq+oVu0nbBvfw+LW/NOyeYgaMU1PZJG
 1u67X5VMiD/7EY+dUneeeOcIop18s/VsHeaDwJD9oOAX462rBW7TFqh8uPtBb1cRtJvA
 sQvRxwxK+oLbZg9nCjqyBZLSGbu6ckl0Si98vpFd3wDFLyFGHk/7zHZ1qDvnGTT+yssi
 JvRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWz0HgGBH9JEQ87na8KE0DIwkAUBZqeicL0W2uPEbXIunhhsIq/UzH0QV28tj3eArdHa9/CVKhG4t2LQsiyfk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyOOpyJ1Sh3hY4bxnAikWH/gM6RvovrYmbAGyEwHD32nUw+ngOk
 i5kk2i2dL61FK0U2orkNoKXcqJqcbedWVXMy36zueS59byFp4Kj3
X-Gm-Gg: ASbGncsv8DtPbLRCx+JI+HT7CyknSOJ0vAD7pJsBGtvRRhhsEWHWEUgjszxaQOTEj/b
 DaOw9CJwcmKC5jBxIUf5BWq32D1/MlOMz2d5/70CuQVPyg+kYEGy/9KITqLVtqjCyZ98eEm5phe
 ygh8OFKYAoWt8lbloy5k4viHUWaIgZMFsmKXRP8pSqi5NrGLSWWcHa+rTdsPrE6dX+Do8CNi+GQ
 MbqktaL7VwgRze9tG4jWpGfjtuSeTBheY57ZDIYn3Jn5jpSIkxjZK+aEu0J
X-Google-Smtp-Source: AGHT+IGHddRWK3bBj5Tq057kXLlHvQKCRF6boTTCM6xgilj6ZFOKnzvSus/wGg7dZ7MfUl9ZQt0kEg==
X-Received: by 2002:a05:6a21:398:b0:1e1:ae83:ad04 with SMTP id
 adf61e73a8af0-1e88d134c3emr44081686637.27.1736912233690; 
 Tue, 14 Jan 2025 19:37:13 -0800 (PST)
Received: from HOME-PC ([223.185.133.12]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-a319772a5a8sm8912127a12.44.2025.01.14.19.37.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2025 19:37:13 -0800 (PST)
Date: Wed, 15 Jan 2025 09:07:10 +0530
From: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Cc: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Swiatkowski, Michal" <michal.swiatkowski@intel.com>
Message-ID: <Z4ctZoisJNJVv3/o@HOME-PC>
References: <DM6PR11MB4610108A2FA01B48969501D8F31F2@DM6PR11MB4610.namprd11.prod.outlook.com>
 <Z4WuXmWcOwlNAZUt@HOME-PC>
 <DM6PR11MB46100E03855B13F00F9B6E64F3182@DM6PR11MB4610.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR11MB46100E03855B13F00F9B6E64F3182@DM6PR11MB4610.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736912234; x=1737517034; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Zj0+YrUHmRLNjBOy9TBhk4AoGWmWhd9y5NPFHsoWxMk=;
 b=IwtMXZeNJtpWBQ1NsvuWBdfKk6YQy9fF6WCr0fgMGQyr7CsKYzmNWU88Yub63mS6BM
 2arL7H2rh3WXZUxLfeaS2srEWhKLbrDSTGOZkrLOUJRU1zVS/1MzIXysrwPz9RUTW5GJ
 EKb+6KAXOhQd/mzsQBoOlZIUv6fRRVcP8a72QmWdEejVGSy7y4UY6c71qNnO8DSHi11l
 pbNZ3Rkq8ynQDY6vfO6ny1h8sqkoLPE2x8nEX+Y2XSZM20CbWmRlNgkORH+4hfx/CvLu
 RenX1mkJ+aY3+XWxyrfZUu6lFZyRtP3ylfMJrPgmy4HMI4ZjRQHcdMK1ljq+2JUdR9jg
 LxyQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=IwtMXZeN
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant
 self-assignments in ACI command execution
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

On Tue, Jan 14, 2025 at 12:32:47PM +0000, Kwapulinski, Piotr wrote:
> >-----Original Message-----
> >From: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com> 
> >Sent: Tuesday, January 14, 2025 1:23 AM
> >To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> >Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com; intel-wired-lan@lists.osuosl.org; kuba@kernel.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.org; pabeni@redhat.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Swiatkowski, Michal <michal.swiatkowski@intel.com>
> >Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant self-assignments in ACI command execution
> >
> >On Mon, Jan 13, 2025 at 03:23:31PM +0000, Kwapulinski, Piotr wrote:
> >> >[Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant 
> >> >self-assignments in ACI command execution @ 2025-01-08  5:36 Dheeraj 
> >> >Reddy Jonnalagadda
> >> >  2025-01-08  6:29 ` Michal Swiatkowski
> >> >  0 siblings, 1 reply; 2+ messages in thread
> >> >From: Dheeraj Reddy Jonnalagadda @ 2025-01-08  5:36 UTC (permalink / 
> >> >raw)
> >> >  To: anthony.l.nguyen, przemyslaw.kitszel
> >> >  Cc: andrew+netdev, davem, edumazet, kuba, pabeni, intel-wired-lan,
> >> >             netdev, linux-kernel, Dheeraj Reddy Jonnalagadda
> >> >
> >> >Remove redundant statements in ixgbe_aci_send_cmd_execute() where 
> >> >raw_desc[i] is assigned to itself. These self-assignments have no 
> >> >effect and can be safely removed.
> >> >
> >> >Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command 
> >> >Interface")
> >> >Closes: 
> >> >https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIs
> >> >sue=1602757
> >> >Signed-off-by: Dheeraj Reddy Jonnalagadda 
> >> >dheeraj.linuxdev@gmail.com<mailto:dheeraj.linuxdev@gmail.com>
> >> >---
> >> > drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 --
> >> > 1 file changed, 2 deletions(-)
> >> >
> >> >diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c 
> >> >b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >> >index 683c668672d6..408c0874cdc2 100644
> >> >--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >> >+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >> >@@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> >> >             if ((hicr & IXGBE_PF_HICR_SV)) {
> >> >                            for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> >> >                                           raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> >> >-                                         raw_desc[i] = raw_desc[i];
> >> >                            }
> >> >             }
> >> >
> >> >@@ -153,7 +152,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> >> >             if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> >> >                            for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> >> >                                           raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> >> >-                                         raw_desc[i] = raw_desc[i];
> >> >                            }
> >> >             }
> >> >
> >> 
> >> Hello,
> >> Possible solution may be as follows. I may also prepare the fix myself. Please let me know.
> >> Thanks,
> >> Piotr
> >> 
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c 
> >> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >> index e0f773c..af51e5a 100644
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >> @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct 
> >> ixgbe_hw *hw,
> >> 
> >>         /* Descriptor is written to specific registers */
> >>         for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> >> -               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> >> +               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
> >> +                               le32_to_cpu(raw_desc[i]));
> >> 
> >>         /* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
> >>          * PF_HICR_EV
> >> @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> >>         if ((hicr & IXGBE_PF_HICR_SV)) {
> >>                 for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> >>                         raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> >> -                       raw_desc[i] = raw_desc[i];
> >> +                       raw_desc[i] = cpu_to_le32(raw_desc[i]);
> >>                 }
> >>         }
> >> 
> >> @@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> >>         if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> >>                 for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> >>                         raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> >> -                       raw_desc[i] = raw_desc[i];
> >> +                       raw_desc[i] = cpu_to_le32(raw_desc[i]);
> >>                 }
> >>         }
> >>
> >
> >Hello Piotr,
> >
> >Thank you for suggesting the fix. I will prepare the new patch and send it over.
> >
> >-Dheeraj
> 
> Hello,
> As a result of internal review from Przemek, it may be improved as follows:
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index e0f773c..0ec944c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> 
>         /* Descriptor is written to specific registers */
>         for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> -               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> +               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
> +                               cpu_to_le32(raw_desc[i]));
> 
>         /* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>          * PF_HICR_EV
> @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>         if ((hicr & IXGBE_PF_HICR_SV)) {
>                 for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>                         raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -                       raw_desc[i] = raw_desc[i];
> +                       raw_desc[i] = le32_to_cpu(raw_desc[i]);
>                 }
>         }
> 
> @@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>         if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>                 for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>                         raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -                       raw_desc[i] = raw_desc[i];
> +                       raw_desc[i] = le32_to_cpu(raw_desc[i]);
>                 }
>         }
> 
> Thank you,
> Piotr

Hello Piotr,

Thank you. I will update the patch accordingly and send it over.

-Dheeraj
