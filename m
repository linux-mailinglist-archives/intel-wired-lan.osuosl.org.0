Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53198ABE81C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 01:37:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B04B882103;
	Tue, 20 May 2025 23:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jBZ40PhEOZAp; Tue, 20 May 2025 23:37:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3794F820F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747784257;
	bh=PGZYBlj/OCgCz8/PGNGSAJeArIWm5gf75vjKd0N4XO8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uJZKy4OcGHaPrYgJZUvh4xutgMli7lbvqmQ2rdFBYCnMnZMlHUDxn+PcikpOILmfw
	 W9ALp2tS6wuIGlgTRnAovoFVlU20K9EKz2FVAwMrV3ZUmOKuYYeN7zyJSJJHhsipab
	 EMEfosaRT05uz58FeZUoj9USBI/Hfw5ezd+obBYISChQBgkEudQYGN+8iUV6Y4LY4S
	 47Bi+YSJBlRGap3D4YfrKMQbP//l/wrR4gRFUd3hkeaOou244H1vApKPG0Yyu/Jt+x
	 HvTe4TR/VE3DOLkJqjziw6aWyTRkbwRTKh9IabsFlEyviDNSLEglSThsqPqlGDqHdD
	 CAYIG6ykLZOHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3794F820F3;
	Tue, 20 May 2025 23:37:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D7D412E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 23:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F5DB400FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 23:37:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8T8ONP-6uyKf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 23:37:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::532; helo=mail-pg1-x532.google.com;
 envelope-from=krikku@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0DDF3400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DDF3400F9
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DDF3400F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 23:37:34 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-b26ef4791a5so4773611a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 16:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747784254; x=1748389054;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PGZYBlj/OCgCz8/PGNGSAJeArIWm5gf75vjKd0N4XO8=;
 b=MZCrY4xnKmxKr7ZG/cTiaVh/irns7VEsv5CA4NLPkYcDtncTPoC0Lmaj31eK6z9D44
 +u7XjaGAVK72qMWffr7DYMKONFzHdxRgHHRTe+cor4zEsW4heo4XRfNrfgGJ9KD2rTwF
 IIshCXq2eudlK8A+7iXM+9dupmy/DeyVgNYu46V9f54Sma7WNpLFuNEY6G4xz0MFXDXA
 hAs5bzzfhaMxckf3X3EEVhdxNjoA0MxtJTxlgcZcbu0SWS/soDgjwkdAOuTr0aoZuUSt
 m1lczzPSH2/q+2IbhpjhHnpefVFHuY6Sfh8HsdLnzPsdBzVvBZ2mu7swsVIdM8rYPTGz
 wn1g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVog/9AJne5MS7gbOLW8UwnIUJVjyaKSUe4YySc2k/FzDOtPjDpLijDWDdh6UAo1GatzPh9bJvRIcPCK7bwbI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwJI83ZOLxRLKmdJBcMbxn2FgBg3j+VQ2BBFB5YdzCw/lDZVKId
 DiTGt3XJFVX/DwYl5hv2SSLpI6c5FVTxyRi7zdF+RcMle9r5EhL3E044/WfN8sVSNapJryEtYgV
 odKzkAbA7vcJWT9UkKPNeEC1G/23MCUw=
X-Gm-Gg: ASbGncutXi1PyKI2txwovC/R3hkfdoGTiuHqUZWvUXZDrSNQDvCJlcTKywsItO0qHZR
 nROmPN7CxcTVllC6RdguM4JFQpyHB+3Qhzg1z1Yyj0PKQAT3yo8TcslftTkQJw/HT1CYt9LQUVJ
 3pJ2zvxYcY9FbXsnOd+FsAgyggCm0Y+8axebKBNDmfnSQGI6gJ+fJOuP3EJitctmuFX68=
X-Google-Smtp-Source: AGHT+IEp4cUBW/sIbXbeqATMyNwkGqxRE7jOps6AQj/YAiR1kKEmoq/k+XU1YhzO8x8leIr1xMVwqfXwHSOBVSGPdgE=
X-Received: by 2002:a17:902:db05:b0:231:c792:205 with SMTP id
 d9443c01a7336-231d43dcad8mr275480585ad.4.1747784254267; Tue, 20 May 2025
 16:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250520050205.2778391-1-krikku@gmail.com>
 <4068bd0c-d613-483f-8975-9cde1c6074d6@intel.com>
 <CACLgkEb+5OU+op+FvrrqiA1mgsp7NbA=KB_dCa532R6AL2c3Kw@mail.gmail.com>
 <7d901760-460b-491e-986a-4c5a4ac1fe17@molgen.mpg.de>
In-Reply-To: <7d901760-460b-491e-986a-4c5a4ac1fe17@molgen.mpg.de>
From: Krishna Kumar <krikku@gmail.com>
Date: Wed, 21 May 2025 05:06:56 +0530
X-Gm-Features: AX0GCFvqeNt1kCX2i3ZfOSHmodrvEnJ9kSi4e3UlJp3TkFC-sqabBsv2opWnKmI
Message-ID: <CACLgkEZo4HPfdCSPbKXku3sZkPDzgibDi4XhbuQfUYqcEWa_Hw@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 davem@davemloft.net, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, edumazet@google.com, 
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch, kuba@kernel.org, 
 pabeni@redhat.com, sridhar.samudrala@intel.com, krishna.ku@flipkart.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747784254; x=1748389054; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PGZYBlj/OCgCz8/PGNGSAJeArIWm5gf75vjKd0N4XO8=;
 b=Wwsor/KMMZyktapcVrvAvM6lhXG06JfXMck4vYx67aaXnqdTmH2Zo51IUsikpfGYbx
 ZC8k+MSFsAaojVw5nxpjEnF08Lb9+lcj72PEeYhDfRLfnyzrHcxOZpisi3hQ2t6m4fwK
 ybAWWHqzCEs5LyF4N52b//BoG9Ncc4VkR72gaPnZlpkpc2z2REA5IO1Gb0XWaMObajSx
 Rsz9yCAmYLzJBBz1QNKMOXfeBG/97llGAHi6C7YBjmpC4hOrYP0xELmJRmiLcwncNqxw
 gY2/DhnkZPoQl3hv68s5Yc/Gcq3KclrYYFHlpTL7ljThacBGqcd97I9RI9l5cH/b33iX
 wF0g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Wwsor/KM
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

On Wed, May 21, 2025 at 12:41=E2=80=AFAM Paul Menzel <pmenzel@molgen.mpg.de=
> wrote:

> >> Also, please add instructions on how to get these values, so that
> >> validation team may be able to replicate.
> >
> > I have a large set of scripts that measure each of these parameters.
> > If you wish, I can send you the set of scripts separately.
> It=E2=80=99d be great if you could share the scripts with instructions. M=
aybe
> you could even publish them in a git archive.

Sure, I am happy to share them! I need a little time to clean them
up, replace hardcoded values, make them more robust, etc. I will
publish them soon and share the link here.

Regards,
- Krishna
