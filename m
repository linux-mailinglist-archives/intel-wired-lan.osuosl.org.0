Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 605CBA5D262
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 23:16:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 066D140C5A;
	Tue, 11 Mar 2025 22:16:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9-GoGUtV2mcC; Tue, 11 Mar 2025 22:16:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 406C540D3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741731391;
	bh=iuiqi9e3e8PTnvOuSOCH00S3bhZKN6Wl9Ex5eOpNe3E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IXFIm1uPKapyoMSq2Z0ZnHarjiDJMZ2XJ2B+v6AMD1s9pd1hF1lO5NTT15mJKzFWx
	 APQrMasBf3PaPto+2FTmbABu42fA+AGey5yL0GT1KYJ5UCKXZIAg3a7FT/ySAydEji
	 MERdRZ6epwEcua/nXsO7MiVduhuIP/j9oXXHIRYfCvvsosxkDT9dIGL5cKmWYFoQPW
	 RcJQXuqmQ79VtP8tgt6W0IBOugykz6rH9mdWpy6lVlUQLLrAQTyr3Mf0Z1OT570Jhs
	 ok45VdBg4EQSvLuKm7l47nANq2Tm3GwukHHYSmK8BlBIO9+qjoXgm4lBwVp1DOOAmf
	 6cB89fczsfKiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 406C540D3E;
	Tue, 11 Mar 2025 22:16:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D289F1DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 22:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA63540BBE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 22:16:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Wl5p_sccjPM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 22:16:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102b; helo=mail-pj1-x102b.google.com;
 envelope-from=joaoboni017@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1DCED40873
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DCED40873
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DCED40873
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 22:16:27 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 98e67ed59e1d1-2fee4d9c2efso10141406a91.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 15:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741731387; x=1742336187;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iuiqi9e3e8PTnvOuSOCH00S3bhZKN6Wl9Ex5eOpNe3E=;
 b=VcgnIM/oDPm7oRXZYmqwuCcU78gKUbUhzG/jF4HdMYGZNyK2pQjqayiXM0iywucGm3
 gx1cosAThF415WtKJgOq2yjMr0T8isaPvKDR8u+X2bwxheQU9HqekFnH0PH1y/ONOlP+
 QEYop6u0FJixQaBuA3Ud0Vb4aS+PPT3nxzdsimYmCx4UkDpq99HSwCHWQ1VrphGUtiXI
 ePXfpMMEdLkSgLuABxAhCyBjFJoP5C/k/qUcFuQfuPTeLqMqufIxAjqi7Imf8znjsUxE
 R0keVA7UIa/3bPlzzLzW1IpG0zigdT1E/Hfu15A9ciXZIUjlardmm4m0H8hmzm8XOis1
 nYKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdGsR9bRdRkg4FslkuBhbE4JnZKhzU+x2fIdSX9B0PGIYy2etuSLhQ9BCdhib5sy64TyeLq4XNGT4vXRHWg0Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzkdw9ytIfq63O/HsUWljv8c+hjAHf50/CaXJNmdQ+CmgJ0FJjA
 6sysRY36PXwTlQZxjBG+HoegCKGN4UkQ3QTkibNfzN6NTWNNTwjX
X-Gm-Gg: ASbGncufpVFSVSZA8LQzERCYuZ0MUn1IWuhfiutovABSISjPumnBab1zkm/7jawbpcn
 EFGsbkG1tlwpSjN7QVJJP4rFw9VjK7T0WDmtO+uVWlS3FC9QcjUej3KpJ02Y88TJxb20KJ9B63a
 n00SwAeAFqvs0oVsQFrY6sHT75uG9s3DzOYWri3ggBGjghtJzIbbfpoInR8lDa+vmqr0sflJSHR
 soe5grDdN0cNE2Y0od3YOdURfhISmQtbZhhmFCqCihkP5mSd5sQMl5Ioz+oPEM4xDLHuCthvHlI
 XBBqmAsKD08zsHAbWMYws9aM4sfKm41yHECs5zOgGQ==
X-Google-Smtp-Source: AGHT+IHx77KmhClE9y0RHz3VSR7AoYY9YnSFnXUMXC59jH0tGBzghTeYuIgmk5Bdd4EbtttJn1ID6g==
X-Received: by 2002:a17:90b:17c3:b0:2fe:a742:51b0 with SMTP id
 98e67ed59e1d1-2ff7cf26dfemr26096359a91.31.1741731387229; 
 Tue, 11 Mar 2025 15:16:27 -0700 (PDT)
Received: from fedora.. ([186.220.38.89]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-301190b98b7sm113364a91.32.2025.03.11.15.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Mar 2025 15:16:26 -0700 (PDT)
From: Joao Bonifacio <joaoboni017@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 11 Mar 2025 19:15:13 -0300
Message-ID: <20250311221604.92767-1-joaoboni017@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741731387; x=1742336187; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=iuiqi9e3e8PTnvOuSOCH00S3bhZKN6Wl9Ex5eOpNe3E=;
 b=JvT5sMWyeYWNZT4LOT/AgUrNNxyt3yREJU+lINqc+DTa7fZ/eQfVKTXO2hXiOIZbv4
 GTx7WMNu4Wp6WDrwf2/3IkLnDSfOar5gbB0O6fENtYGVwo2eGVeTAyJyph/+EO0GB7ME
 LxZA+1jh1S4KpvzpxXM1Kc2o+97acOj7diYFYHNyZjCq5NGnNH8DUaNNWe0GVq3xTep7
 oGzcdG00cVfuPTb0xaO7BfXBiypWT91S/tOAc3Syg3aRSvPLvvCxiSLnOr2N8bKsIdVR
 r+KGD3Mi0Lp2hbdxrJvYH1bZq0c7edrexomwERqsgLupltt0a9n36sVzql180rXGKhrz
 JOsg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=JvT5sMWy
Subject: [Intel-wired-lan] (no subject)
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


The following is a small change made to the file removing the zero values from the initializations.
