Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0851BA0FD57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 01:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CDBC60B44;
	Tue, 14 Jan 2025 00:23:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JCX9YCBdozUQ; Tue, 14 Jan 2025 00:23:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA14560B50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736814182;
	bh=/UiYLFlLwTk2sQjZg8A3ILqtZiVXnyupyxwDjYITKXo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HBcJolcos7wYt2iNOl6lbPPDr3P77UnNyvrl8DKy8Yn47L8z3dk7FETc0lNskivae
	 141da2AgQ83HRBZX8OkaI+7Y4DSOD62Zkn6ACdt4u79OJYyJHRfJAUNvBs7J7jbGQw
	 smm8kgMSf31t+O/bHeHhDKrkidG+9F3U/3fBlXPrcOgt9AoVuX6Ia+RKJjkuwDbI+I
	 LVCy7430YqqO0LIspaFRtpsfvt2OXveVR7INEvimWzOX384xVnavvgxT7FNXACaUuv
	 dFaw0Bqee7lHl1DoKlt0q/i1/cxJfVURK5A/3qDm/jaR/vvVUXWK+2U2DP0T7cGgS+
	 /vQhAK5Kb+8fA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA14560B50;
	Tue, 14 Jan 2025 00:23:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 52D48B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 00:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F47B4031B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 00:23:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9AhhWPUNzI7E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 00:22:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=dheeraj.linuxdev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04037403D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04037403D4
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04037403D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 00:22:58 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-21644aca3a0so107604725ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 16:22:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736814178; x=1737418978;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/UiYLFlLwTk2sQjZg8A3ILqtZiVXnyupyxwDjYITKXo=;
 b=DurK39ORKUsGqRspFTOVBcWjNCOmDzFsmQtAOiRjkviUQg7K3BeGuQHF/bqZ6r4Ltl
 Xptw+LsfYBohEEE5mNL3zSlNJkQuknWZOCv5k9WOCSexnvAJFnuT/DvUmLxMsa+M8uoA
 J14TMXbM2y/2aP05b2ON5dnwUBBPjMFzwJP51ovCBjhlFzzn0eaeSCjdvfcpfT+bZbZh
 5h+aRyUwvNKbigGh+41Uk6ubx0uTRKWAxJV0GNY4u/ikFyjqyhxJjqXU+NEoPUeG1oKD
 KtMo8iYrOdyEEKzBadtiHNojG5T2DkoXFxY5dxVDw8YNdQBO0HR33SV06mWkiBCO1lsU
 3DmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWi/VoxTzUEv2/Flk+YDnp2tRBFN9NEZSvXQdwWzbaRuutEVWvIwE7KtthLSLiyhdh9qicC4IfkMLFZgN2TA4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwocRax/VQFV1HNTckwJerTMu9FSOXKyxG0ZE69IXS9WWDKVjhM
 5VbB/SoCXXmdopOSx1R5Arqbu2rTuci6NtRrk++EavGOl6OHfKhl
X-Gm-Gg: ASbGncuirdjVfKrwJsj0vhRzPQmigsUtKAXHn50Ep/7gePeAfsxq/U708OPDP7mpcUU
 7xKqpNDK0OwsG50R+OUkWdyF5pZuiuxZTLUwZwJBd0ETJQA5lVpowcwXyz3XJd3F9BZiqR4sQOS
 qg7ZzL3pE2B4iKtlf+6BNv9JIS24MIPyQ16GdsuC5YdZNga3Bq6KXhRNPbWw/aDdbvH6zcaY+oN
 S0WzxN80hRV7OC2YFEzoif/L3lldZTtK+0Z8CLV1Jkdrkjn5ZdjWWmBKWvH
X-Google-Smtp-Source: AGHT+IE7mGmM4vmR+GJnT0a75lDlxZQQHp4cimm6gmSSjGqwJ+CfPeXRXhxxFjJBkLKQuY8yyE12KQ==
X-Received: by 2002:a17:902:ecc5:b0:215:bf1b:a894 with SMTP id
 d9443c01a7336-21a83f76704mr351058565ad.24.1736814178141; 
 Mon, 13 Jan 2025 16:22:58 -0800 (PST)
Received: from HOME-PC ([223.185.133.12]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f10dddfsm59304825ad.23.2025.01.13.16.22.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2025 16:22:57 -0800 (PST)
Date: Tue, 14 Jan 2025 05:52:54 +0530
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
Message-ID: <Z4WuXmWcOwlNAZUt@HOME-PC>
References: <DM6PR11MB4610108A2FA01B48969501D8F31F2@DM6PR11MB4610.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4610108A2FA01B48969501D8F31F2@DM6PR11MB4610.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736814178; x=1737418978; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/UiYLFlLwTk2sQjZg8A3ILqtZiVXnyupyxwDjYITKXo=;
 b=kTbPCWHtS0yfuLNnt/dAS5Ou6d7JpI2cLpsCAfItfCaeXNbeHkrRkbco8bZICt2sxU
 /mh8eM81WvsFHV8lb01B9RnvuOFNwnEQ86UW2+07QzLOZI+ezWJ7ZCrzYOTtFKqyFmim
 soP7I6TQF/XjGf7R8jf/lfsVtgDHfoPA+LbyZlJOzm15ugWM3+/OMlOnaaUgQNiOrEFk
 6aaFTGAkRZPQhUTVg1wcjbLklpVSwcXFDF73LZ2Qw36YRF9knmeIapkWmafvP03y07dd
 7IbINPUpQpr7gwTN+gLhix/XH80eJy5zBl7i0y+fobfbBrrWi5kEJ3J6HlLQT0Fw4nOe
 2iew==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=kTbPCWHt
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

On Mon, Jan 13, 2025 at 03:23:31PM +0000, Kwapulinski, Piotr wrote:
> >[Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant self-assignments in ACI command execution
> >@ 2025-01-08  5:36 Dheeraj Reddy Jonnalagadda
> >  2025-01-08  6:29 ` Michal Swiatkowski
> >  0 siblings, 1 reply; 2+ messages in thread
> >From: Dheeraj Reddy Jonnalagadda @ 2025-01-08  5:36 UTC (permalink / raw)
> >  To: anthony.l.nguyen, przemyslaw.kitszel
> >  Cc: andrew+netdev, davem, edumazet, kuba, pabeni, intel-wired-lan,
> >             netdev, linux-kernel, Dheeraj Reddy Jonnalagadda
> >
> >Remove redundant statements in ixgbe_aci_send_cmd_execute() where
> >raw_desc[i] is assigned to itself. These self-assignments have no
> >effect and can be safely removed.
> >
> >Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
> >Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
> >Signed-off-by: Dheeraj Reddy Jonnalagadda dheeraj.linuxdev@gmail.com<mailto:dheeraj.linuxdev@gmail.com>
> >---
> > drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 --
> > 1 file changed, 2 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >index 683c668672d6..408c0874cdc2 100644
> >--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >@@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> >             if ((hicr & IXGBE_PF_HICR_SV)) {
> >                            for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> >                                           raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> >-                                         raw_desc[i] = raw_desc[i];
> >                            }
> >             }
> >
> >@@ -153,7 +152,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> >             if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> >                            for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> >                                           raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> >-                                         raw_desc[i] = raw_desc[i];
> >                            }
> >             }
> >
> 
> Hello,
> Possible solution may be as follows. I may also prepare the fix myself. Please let me know.
> Thanks,
> Piotr
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index e0f773c..af51e5a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
> 
>         /* Descriptor is written to specific registers */
>         for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> -               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> +               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
> +                               le32_to_cpu(raw_desc[i]));
> 
>         /* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>          * PF_HICR_EV
> @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>         if ((hicr & IXGBE_PF_HICR_SV)) {
>                 for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>                         raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -                       raw_desc[i] = raw_desc[i];
> +                       raw_desc[i] = cpu_to_le32(raw_desc[i]);
>                 }
>         }
> 
> @@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>         if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>                 for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>                         raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -                       raw_desc[i] = raw_desc[i];
> +                       raw_desc[i] = cpu_to_le32(raw_desc[i]);
>                 }
>         }
>

Hello Piotr,

Thank you for suggesting the fix. I will prepare the new patch and send
it over.

-Dheeraj
