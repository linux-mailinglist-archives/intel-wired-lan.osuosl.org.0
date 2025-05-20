Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 616BCABDFD0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 18:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAE6160770;
	Tue, 20 May 2025 16:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AePGD9njHUml; Tue, 20 May 2025 16:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D2B16078C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747756895;
	bh=3WpaFuqgemY1BfXOezocTpOIJJEL8+xHpHZQ8koRSXw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j3N0Bn94bAiOtsFlzIRkW/9ZWZPe9ofA+TBzrJpQq5rlfk8PPFb6dVck/2bgDr6ND
	 w2UluRjSDQgpwjBvORy3NmO2SSrMp+MzwBvFf9/D8OBFW0WMwkOkxjnQwzfT0vtUW3
	 EBX6fjSDdeFFGUC2oToWIWlV2Fh6NEjUjzdUURaw0E1JXeYw/nGowGqhQj9TY9dPGp
	 r2qbQKdKju5PfOdzo29WA5mHAxPjSbz8R1QFi4tQhmFZTOA/yJkxqzDF57x/mwECf3
	 zGM4ju0oZY3+LXBTcu/IAxsQDhjqh7ktY5l/MunBsXU2K3cZTrbKgPvWx+rhJEuAVR
	 FSPXcTpQh4dlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D2B16078C;
	Tue, 20 May 2025 16:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B169BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 16:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A37376075F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 16:01:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KV5Yk7il_neb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 16:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=krikku@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2368560739
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2368560739
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2368560739
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 16:01:33 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-231f6af929eso42648435ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 09:01:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747756892; x=1748361692;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3WpaFuqgemY1BfXOezocTpOIJJEL8+xHpHZQ8koRSXw=;
 b=S2gAz7pdv86Ej0O0MvpZq69M1yGjRSn3fRQRb4tYB9BCRLgYvWY8vkR4b6tD+NmBlx
 3tdxNao9Al4ARoEsJ34Dtv/k50mYB7olDlV5MEKzPSNJqAKTl6x1JxpY+zBHJTeBI+2H
 cZQjR2ngae1mt1Ncs8GPLznfXrdguXxsiZJV7oound9ojf0Kgren0nE7T6orXaSnFp4e
 ltwz7kVTdoTcv8xXugUNLCHYXDIJ53vJY4dvHwylCQ41nlt+v9v8ikuSv3bvlwtjCK26
 gPV7UMmbsrLszviQ5qGFLZgHZYqxkisdzUJfrQU/wl3v7M8Vwa3duVaJLtNBTgnWeBmt
 BuIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUuCFfiirVKEM1sX5trd/flgOaLzD3PFekGkV2FS381UYxXzXPnNWo9Ka0g9BxLb4LTIv6PGHA1Rh0NVGqCHQ0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwlK05plUJ6nEcW/NU9hzPvvKwlsnxVYin92Xdow3X22FRw2cYI
 kfTigdYGGjrzcd59SgAg1wH/UB8BpVG4rOX5FTa8d5afz/UstGXfaVD42oTDJZc6J+w0AaXh9V4
 jDGxlhX8qh8Vz92gZtSV6TW4dJ/nrHwE=
X-Gm-Gg: ASbGncvdflwGepbJFAOsEgil6yGrB3aHUR8pSuJESsKX9OpBl7V5+p1BAzDkl9CtmzT
 3efPxrbTXWpJOukrFRbyt03P4wgMHZmMRHS3YSsjw6/jCGiNNL7rLECxZhgGvKrzts2lksiN9s1
 01qPLbX6ns9hlJNpUa9Mue43Q09k16pg==
X-Google-Smtp-Source: AGHT+IGBH1wROnfvUVyYnKcCwE9Z+lQLbfXMTbrgjrcSVkVBcNUpFQrAkanYCFT/X0epMt9agpxILD1nlIhwqK2lv+4=
X-Received: by 2002:a17:903:17cb:b0:229:1cef:4c83 with SMTP id
 d9443c01a7336-231d438b415mr253288365ad.4.1747756892398; Tue, 20 May 2025
 09:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250520050205.2778391-1-krikku@gmail.com>
 <20250520150619.GZ365796@horms.kernel.org>
In-Reply-To: <20250520150619.GZ365796@horms.kernel.org>
From: Krishna Kumar <krikku@gmail.com>
Date: Tue, 20 May 2025 21:30:55 +0530
X-Gm-Features: AX0GCFvi1brVT_3p0zQROenI-5ODUwpxDm7DR6RkuusjGvKEJNNvpz7Wu86dQHY
Message-ID: <CACLgkEYFH=L1EDTG2oVWM588DocZgnk_i04cgNsWT6A_MYD=ZQ@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: netdev@vger.kernel.org, davem@davemloft.net, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, edumazet@google.com, 
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch, kuba@kernel.org, 
 pabeni@redhat.com, sridhar.samudrala@intel.com, ahmed.zaki@intel.com, 
 krishna.ku@flipkart.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747756892; x=1748361692; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3WpaFuqgemY1BfXOezocTpOIJJEL8+xHpHZQ8koRSXw=;
 b=UiBT3fE3Un7jEydM2/CyPXeuVEnsAns+8x4vcU4iw97y8jwAH1AVAJdDh2aVUliKfV
 p4rRs66T8TQPS1Ovzbqh0CUWTiFP9jBQK7gYWMinU+PcZSbjWrgE9xbMUqvpk2VjctRg
 VeAvYsMu+UU1ph1u+0kS0ZLlO37bpFrXauWw2qNWlx55ZDbXJM7Gze829+xo7IQILcs+
 vQExPgyeVoysk/WzdQdo46REX/PZNsdLr3+DJsRN8LKIO6TC87WEGZJjb9XbZupqEB3K
 HUQ0zc+1vqKnpOwRXavSV4JEioAAm40DEKo+ewJ1dDM3d4rR+pVMcWK4bo6TdMq91kEZ
 i3iQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UiBT3fE3
Subject: Re: [Intel-wired-lan] [PATCH] net: ice: Perform accurate aRFS flow
 match
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

On Tue, May 20, 2025 at 8:36=E2=80=AFPM Simon Horman <horms@kernel.org> wro=
te:

> Hi Krishna,
>
> As a fix if this should probably have a Fixes tag.

Thanks, Simon, for your feedback. I will make these and
the other suggested changes and resubmit.

Thanks,
- Krishna
