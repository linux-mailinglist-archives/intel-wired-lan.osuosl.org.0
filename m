Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E490F9F50B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 17:18:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D38C4053A;
	Tue, 17 Dec 2024 16:18:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lQt80rY6TrVF; Tue, 17 Dec 2024 16:18:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37BB74053B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734452289;
	bh=gk0oaVX4f1jnLyQuTOGkGWyylI3KWC0+6v2HjUrWfmw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iCDcodJO13PKjM+ZxaVzkus2WUAWuineuBDclporWU29W3BLc4MWa2yevcyh5NkKr
	 RsVysjKdgd0B0RfJXkHXx+J+M22MTJuf68vi9BoJgNNoNeeHCAveJESvTV5upjRhEl
	 4ZOkZKD7W6NQmpCGxtAwTY/V5aW9Zsedu114/iYRJgtujn1gAX9S3vakp+NcVwSqF9
	 fl4h0gLt07VigRzPUngfUcYXeEyOHTTlq1VsyKEo/q9MGQwFb5Vlgaqg0wmGFZ2gqA
	 BzT9f4penp3y09T1eTMyZGBXQDmH6nfwdvuVglnyx/+6hWB6asgV03oTN58umRXu+0
	 w2cv4MSdSN/dA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37BB74053B;
	Tue, 17 Dec 2024 16:18:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D466E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 12:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47912413D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 12:10:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pu8S-oSlXtKX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 12:10:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=0x1207@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5B7DB413E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B7DB413E2
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B7DB413E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 12:10:03 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-21628b3fe7dso39810925ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 04:10:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734437402; x=1735042202;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gk0oaVX4f1jnLyQuTOGkGWyylI3KWC0+6v2HjUrWfmw=;
 b=e2lHSFvDCclTiW+7ZEz0glRhwgS4AgfVX7KlUmEM3hm77xnYB/55kQ3UbDNaWYnfYX
 M6U3j8gefXepWlEDsiiKiOV6Fjb8NzEPF/ckAKV6mOCXTuOH6WbT/BGX/5HceSFO3pXc
 CvMun/gsvXuglQNPUFx3/zRyKr8g7pllaV+Re0oX3erXFC0pEKfXlHCOgbpNK9C+G29j
 tzSkIQ4AERTSGpJquTTExhswt5QCHuTq66zej2IkvzA6w0O1Ivhdd6eYsoh3M3LIJah2
 jqDJQUaTN8iKiXi8NDaHrK4o1X7tND1By7TRlg6p4qMoa4RBc/u3GDX7pWBa39bobT+y
 87dQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVvk7fInCaIGdoWd2PKYGRS6+Xrq4PYWhb8fwHNQKNgWF3P1tSa2D28/cewy7xNxEGUj9Xpag9uOORtHZ38rCg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwyHdyksn1OqKp3NL1Di4dFcxdmLc6yG7h5upIhDR0G1kND1oDL
 4Bg8WT92EmQbg6Ih9/3CV7QyrloM8FuoYOYz+vllbT6n38X+IVaZ
X-Gm-Gg: ASbGncsL2OOoqC2YJQ9sytThiO7mHVamBOEYIY21udKEKFkk6KnrAtI5CxxDLQyBJK/
 VzfM/Sk/f7y5+F6EvqZDEcetVbKtc9O+gE/gHeJhBSNKQLfj9IPkOToJQSXU7eSdyxEp2QdESZ5
 zoknyKdLN/xgUB62mKUCYuy5qt1+Qjn6G04XE0fCf09Sw2mn2yxQdhY9PI5jsRlOgmXNdMvLIAC
 HVk3UqdWj0lVvM6A9L1YKIqxm+oDNhl7aGLeA+vXmzC1vDYPglCwg==
X-Google-Smtp-Source: AGHT+IH172+O5cWLAzm88+O1nCTzfqDJrh1eXruu2g9IjpXWXMeav1TOvKMsGfuPjCK0wT7Vfh2AJQ==
X-Received: by 2002:a17:903:234d:b0:216:70b6:8723 with SMTP id
 d9443c01a7336-21892a5440cmr215041055ad.44.1734437402485; 
 Tue, 17 Dec 2024 04:10:02 -0800 (PST)
Received: from localhost ([129.146.253.192]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-218a1e50299sm58486205ad.143.2024.12.17.04.09.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2024 04:10:02 -0800 (PST)
Date: Tue, 17 Dec 2024 20:09:52 +0800
From: Furong Xu <0x1207@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241217200952.000059f2@gmail.com>
In-Reply-To: <20241217002254.lyakuia32jbnva46@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-7-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-7-faizal.abdul.rahim@linux.intel.com>
 <20241217002254.lyakuia32jbnva46@skbuf>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 17 Dec 2024 16:18:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734437402; x=1735042202; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gk0oaVX4f1jnLyQuTOGkGWyylI3KWC0+6v2HjUrWfmw=;
 b=Fab2P4mlroV0UhT1ZyTZpgdAOVi8WEdcBlxRTN5C0fUE+0HPSiC/eCmwe7F2YY7xbb
 dgwwovxHQJnQ9wQKjoefphjiTyjbAQ4TQseduCw/8uGTCpT0lUKnD8i1+U3cFcQ+ZWNg
 LlMJqeuXuFX8eldPMY438cm9u63o6Cj7FqDcnqleL0iWSODDncByGblMKo0Vh2FOm/sg
 Udm/smvO5n+Ir5kdJsCO7xUR185JNvjbPHaFjoR2BQIPiL+N8MgRsRGiq76Uu9AaqrRh
 cndxHmL0KyisO5lt02zz3aVTBAxkmKl1eQwFnm+KP8BSELmQk5vFoYyD1WE2XtKSf9cO
 GMrA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Fab2P4ml
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/9] igc: Add support for
 frame preemption verification
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

On Tue, 17 Dec 2024 02:22:54 +0200, Vladimir Oltean <olteanv@gmail.com> wrote:

> Anyway, while browsing through this software implementation of a
> verification process, I cannot help but think we'd be making a huge
> mistake to allow each driver to reimplement it on its own. We just
> recently got stmmac to do something fairly clean, with the help and
> great perseverence of Furong Xu (now copied).
> 
> I spent a bit of time extracting stmmac's core logic and putting it in
> ethtool. If Furong had such good will so as to regression-test the
> attached patch, do you think you could use this as a starting place
> instead, and implement some ops and call some library methods, instead
> of writing the entire logic yourself?
> 

I am quiet busy these days, especially near the end of the year :)

Maybe I can help testing the attached patch when the next time net-next opens.

Thanks.
