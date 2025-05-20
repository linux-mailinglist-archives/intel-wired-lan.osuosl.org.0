Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9A0ABDF65
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 17:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C943819E6;
	Tue, 20 May 2025 15:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j8WR_QNef5Cc; Tue, 20 May 2025 15:44:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D71581A1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747755885;
	bh=sAeNCAl0GjlQKrm+f91vwz/79VKpSq/6746O3r+2mH8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t7jtbZfQdkcracajF6VXwqTRKiCZReGms3kBx4zpgUU3n+ps01FXhiK1NbCp4tq7V
	 hKiKert6vY5kXMy0bNANpdzYBJ751k/UFg+k0oGOXzokCEMNDxESImMuOqu8hQcv8v
	 q6wSY3eOcMGz+TyeDaxGAx60gVrBA9FUrQBKL07gtKuiS9lXS35h2M0gUi/f9NfQPX
	 8ShHblQm13QnXS6UY7Qhv8JB1quRXG2fEylHiyteqn0uDoLEcJ37Ju69QcD3mB/G9i
	 52AcBJzLRB6iIXG5q+ENA9JJ1GccedQZfU29x7Q40X3xdaGtK07SzgX+E6kaTbAMqD
	 yB/JNUgstY98w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D71581A1C;
	Tue, 20 May 2025 15:44:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E61ADE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 15:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6977740B0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 15:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6V3-kz8BFyfs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 15:44:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=krikku@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DE1F540AE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE1F540AE2
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE1F540AE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 15:44:40 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-22c336fcdaaso45886855ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:44:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747755880; x=1748360680;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sAeNCAl0GjlQKrm+f91vwz/79VKpSq/6746O3r+2mH8=;
 b=AZLUatWCzL0/vF9JZjNLViYInHgI7x1Qx3ZQFXIlnwPymgGeTCqe8yI9yM72d7PBlj
 7xHPw4zXwpZ9wcItKobRcujsq9H2RblxgUtEH/5gPvWjN9KghpT1N5oOF36ldbJNNZl3
 zTu876dqKsAsPnxO2OCgE5tkEDlsyXmw6VP6y5ia3Q0sZQhNAhkyL0Em1LMscvwxo11z
 aaoxiHFliJyU81rQHmT9hG/wtK5pBCdg+c36W2zHMPeQfCsmXajIV2VthGxZ19l1ph3u
 5A6fddMTjzoFGvw2kv8sz04xy6FiNpKWDuk9Up6zdpL8HtIfSxt7L9LSWcNRCxItbj5s
 bszA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFEB6Q+1a5k3jF6raEPWvM/R15aiWMfAJwihV2kzmnqNfbkLzhj7S2TWrvGWllt/kJE4xNWlvgCpG00tqhH1Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwTSYrKkXnw1o4RHsxZydeQ1MbaoQF+5GjB+iIkUDKC9WcEK7Nb
 A1yl8EDdM1byWcd8ZaoEQeV1fgW6g1Ir3inTm7NVnfMsKNAcVH+PxpnKcDvjeDzi+wxIZOmYsrd
 4Hxafo1/iUuWG1MxbU6xmlR/qT2rW9dI=
X-Gm-Gg: ASbGncvbJT7kNkno7TFyYWb9uP98KG54G4I+KSadvohB485OR2BYpeVlzNKacqdUJGf
 bpFcv++NNRbHcPXTu+My/wphMyzes3cy/+JFXoPtBeSdJvV6xKmqOYf3fr967Zc38UD5w7I9jdL
 OA8M/rEmSy3vvF4YSMDT9BEsczFft9Mg==
X-Google-Smtp-Source: AGHT+IFItKx00FgtHD3TpZ7XCYeaMOYscorXiNJ3O+7ZYYuf2AqZ41Wb3NzBdPKhz85SlE7KMhlCk71QDMzDUoutEgo=
X-Received: by 2002:a17:902:f78a:b0:216:2bd7:1c2f with SMTP id
 d9443c01a7336-231d4511e0amr208520345ad.18.1747755880141; Tue, 20 May 2025
 08:44:40 -0700 (PDT)
MIME-Version: 1.0
References: <20250520050205.2778391-1-krikku@gmail.com>
 <4068bd0c-d613-483f-8975-9cde1c6074d6@intel.com>
In-Reply-To: <4068bd0c-d613-483f-8975-9cde1c6074d6@intel.com>
From: Krishna Kumar <krikku@gmail.com>
Date: Tue, 20 May 2025 21:14:03 +0530
X-Gm-Features: AX0GCFtjfzEGauHG6PQsvUYHDZ2WqeiZz5Y0kARYHJ5kWsh7Brhkn_YUHqypRo4
Message-ID: <CACLgkEb+5OU+op+FvrrqiA1mgsp7NbA=KB_dCa532R6AL2c3Kw@mail.gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, edumazet@google.com, 
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch, kuba@kernel.org, 
 pabeni@redhat.com, sridhar.samudrala@intel.com, krishna.ku@flipkart.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747755880; x=1748360680; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sAeNCAl0GjlQKrm+f91vwz/79VKpSq/6746O3r+2mH8=;
 b=iBTqLGAVBXgUUgLfGWI8WO3/U/wEGcqbX8CKNXH+9fsEh42QOGaplDLotnZD/PQ6Wj
 mj/nPaDjYiEEgldNdB/yrUtNwbVe6OQgSUC4BO99P7pz8b1Sf1G78Ipx7OIJB2tZ9mJI
 KzuVzCJGgzKlUPe7hlN/T8WoDaPk0vwbDbvT2ZCT6CAZnpJ0qlUi91VyQzluQptzyWNw
 AewnhXgQC5mUgrIvw0Gi9BRi9mc7O1c2Kgk87lM24ee4+hiMV5EGHyqu6tmmZCLEiF2w
 lyxwRhWVUreJUQlavrepDsnaKizd7YScBjCVnmS4KXh2cb5zWNX+mkofN1tPj9x+bfPR
 8vpg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=iBTqLGAV
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

On Tue, May 20, 2025 at 8:18=E2=80=AFPM Ahmed Zaki <ahmed.zaki@intel.com> w=
rote:

> Are these numbers with the patch applied? Can we get a w/o and with patch=
?

The numbers are for the original driver vs the new driver. For
purposes of calculating
them, I had sysctls in the code (removed for submission) in the
original and the new
driver at each of the locations given above (a simple
atomic64_inc(&kk_arfs_add), etc).

> A table might be better to visualize, also may be drop the
> "rps_flow_cnt=3D1024*" case. I think it is enough to show min and max one=
s.

I will re-send the patch after adding this table (and Simon's feedback).

> Also, please add instructions on how to get these values, so that
> validation team may be able to replicate.

I have a large set of scripts that measure each of these parameters.
If you wish, I can
send you the set of scripts separately.

Regards,
- Krishna
