Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C100DA9F610
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 18:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CD2460BDC;
	Mon, 28 Apr 2025 16:43:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X9YALR7zw-D7; Mon, 28 Apr 2025 16:43:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE54460B0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745858604;
	bh=ngL9FqKM7D7y0OuHdGq66gueiX0sm6vhAO6erZg3jDI=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n1uFwiYJuTCPGzVgBzXj3HYvAKlPv7CrByimYoneuAw/GTnu+puqCdxtPaVjnEQCw
	 JGDVRQH7WJhayM5XuABMg5thdDrKibmE/Iy7V840FKwfuNLjSt4UPmNM4hnoS+zCEG
	 yGACYSc3rZDfYnxH7zUrioT63xxwhXP2KNdTV+9UTf1DQSHhGGYRPxknPEmvzgLRvN
	 mfek2BRd835rQV7I3PtANYWcpnNuu7QkSatqp0o1K+Fu4A6NBwmRzO3DZ/pS2fcDJm
	 pKGpD0Tsprv5HeYOqBzcMCT9wUcGZbfJmDR0VKFkGb8TII3mvmJa7w7OcBNbgqF6mA
	 6RiWXao/ORrKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE54460B0F;
	Mon, 28 Apr 2025 16:43:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB93A31
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:43:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB53B60B0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:43:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sZPHCoNwJh9b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 16:43:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::434; helo=mail-wr1-x434.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D07C060A59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D07C060A59
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D07C060A59
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:43:22 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id
 ffacd0b85a97d-39c0dfba946so3670447f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 09:43:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745858600; x=1746463400;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ngL9FqKM7D7y0OuHdGq66gueiX0sm6vhAO6erZg3jDI=;
 b=sS5tm1Cv/R8SK+TwTqBfOhPVMImgGaDuPQxWTCFWFGM8FUIZxtBjGXgABzTqCEMcGN
 K38FrdH+Z+iKbDz3qZ8SwH5Omp0SjZ2jw1vLHT9MdIxScjxXxn83iP15zbx7nKmafwJW
 2p1W+MwAGTmMddMTO8ksjldYyqxEu98iLH3s1fEFDUT0KSnF8wHV00IYERSUnZVcmY6x
 byhOB0Myg4C7q/Sf7GQmCLGmsFLF7TTWezebRroPbACAmTpErNLmySXncHzKhZnZGEOT
 7CyqUKaJZ0ZhRKpkaOqeq9Rs6YT1OBp84iATqEH+kFeYjuTJu/sGRJIR2dRWOp4DQGNA
 Y0XA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVe9z8hN6zdB8rXLet7vwWpevCTai/GCHJrmSwn1bOxlkJke37kOu2oFRavZ1GxKli3fB0UEXP7w3JEr9fVCi8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzu0MaXHY1GYDPrXXu7VlE8C5FDSKhSoZrbOv6LWnacgbYgFugD
 7T4h+YykpjTFvT5EiVRTDumWDg6nFCzDRhdoPCYUJxVgwZlgMW37vexD0QgUpA==
X-Gm-Gg: ASbGncuuA9qtyaLvf9qhca+2O7igWmbkI8xZ0k1ePTAFRv3Joc/EZUr7UAgZHu08z3w
 eDHT98jBs6mPGUQWAXox/JGMt/i2sB8xQGfnXJgDpudy/yYtvbKSBN4WIj82YdwfaaTMDBXAMSA
 55l+SFP0OIMCwI9PjYHn06QMMavRP09LIQ5A0FW2D7iSAOv0aFPLSJC5YiWYJKsq9iuxtSVE4Xk
 zY39HqLNRCYOxZVQf6bIV7z0dnuqBrc+V1Y8xkhS2p45Z34eZ8HLkc3f+JzFhVmQVFAc32o7Ntx
 a6rdpX09quYJy9vI6s0OOPtsg9B54H5IROv/8XyHlss=
X-Google-Smtp-Source: AGHT+IGFjWI+lVIy6EA1Bqgdb51QjF8leLF2CGAMRsmOB2lGxbngUneKH6NHv056PQkZdlWc6qwEdQ==
X-Received: by 2002:adf:f78a:0:b0:390:e158:a1b8 with SMTP id
 ffacd0b85a97d-3a07aba1590mr6610525f8f.43.1745858600210; 
 Mon, 28 Apr 2025 09:43:20 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a073e5e345sm11763147f8f.94.2025.04.28.09.43.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Apr 2025 09:43:19 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <a0069d48-38b9-4bf0-979f-7051f8e906f4@jacekk.info>
Date: Mon, 28 Apr 2025 18:43:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <20250424162444.GH3042781@horms.kernel.org>
 <879abd6b-d44b-5a3d-0df6-9de8d0b472a3@intel.com>
 <e6899d87-9ec4-42aa-9952-11653bc27092@jacekk.info>
 <0530ea8e-eb81-74cd-5056-4ee6db8feb9e@intel.com>
Content-Language: en-US
In-Reply-To: <0530ea8e-eb81-74cd-5056-4ee6db8feb9e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1745858600; x=1746463400; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ngL9FqKM7D7y0OuHdGq66gueiX0sm6vhAO6erZg3jDI=;
 b=wmhz/0snn6MBE2SvO9BfRscW7iKjDeAxtWmYNNwpLmkk5SarjTPbFhjTqFajABGzcI
 zpOfKdc7Y600AWZj0LMgaT+EuPPDlQDWJJnrVnrqzwJNP6J2B/hqoX9ys7kevDVCJ5Vt
 0sReDdjfZu8Zz0aoiDoKLr1mqxReLbeVw75ckTdIQcIxqFNe0ePIhlnz1iZllGrEx6qb
 DxZvxLhpKBYbLqWTRuYLfq64Flqau1C3Cu/Dl3XZJOJse0bN1cRs8hVK8PlO0a5GKWa3
 OI5VuNiXnt3+00/kmSPlOGOWm8rkRlD6EgqZuSFRxLswiKN4XnT9qa39ZixItWlkStHy
 VcbQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=wmhz/0sn
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

> Anyway, I think that the commit message should be precise.
> How about this?
> 
> Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the 
> driver cannot perform checksum validation and correction. This means 
> that all NVM images must leave the factory with correct checksum and 
> checksum valid bit set. Since Tiger Lake devices were the first to have 
> this lock, some systems in the field did not meet this requirement. 
> Therefore, for these transitional devices we skip checksum update and 
> verification, if the valid bit is not set.

Should I prepare v2 with this description?

-- 
Best regards,
   Jacek Kowalski

