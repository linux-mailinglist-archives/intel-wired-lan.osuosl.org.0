Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D05A5B84D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 06:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 584F382158;
	Tue, 11 Mar 2025 05:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FBSPRzLbzuHf; Tue, 11 Mar 2025 05:16:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5198E82150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741670173;
	bh=gLdloximMvRWgEEGkWNTCSJkS0eV4oAKG5hy6Bb4LfE=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zz7xdne/jFhQ8RsONQwPdc2GNbU7bn6NOVh8CU7PVcExtyAYIpz6Kw6VzWxmzN1OR
	 G5pb1s8JBAjEZ+g+bivtYaTOC7J3jAFMPbIIO3CB/fimf2uuv6E8gD1Kn5af9ntzPW
	 diL7pin6igN7tlLerLRtuZuypfzLWq6RUIomIIzVtpRWBm6S/wclzEg26OJn3LRNti
	 +WyTEwRsUsLhW3WYKz0mohwTA7oknYwK9NzzpuYT/1in02NaOm0DFx/U96R7b9RtB/
	 hi+zli4CeS9CBwNsbUxYEpqpcjJxU3hPphmDk286Ofa66XjPWnRRxJZe1mK8I4S9NB
	 o4TAuD7tRwKpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5198E82150;
	Tue, 11 Mar 2025 05:16:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 59EF6EDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 05:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D8B840B8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 05:16:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fGWEQCOK5VUh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 05:16:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102f; helo=mail-pj1-x102f.google.com;
 envelope-from=bookyungwook@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2F0B340B9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F0B340B9A
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F0B340B9A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 05:16:08 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 98e67ed59e1d1-2ff04f36fd2so8427049a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741670167; x=1742274967;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gLdloximMvRWgEEGkWNTCSJkS0eV4oAKG5hy6Bb4LfE=;
 b=UPc4KB2dgdHRePpBYouiU1wb2UyIobtNgP9589//Iy7Dtf+9hI3HgajLj/B5x0gJyS
 DqR643oC232LRu5Oqk5U3HNgKr+s9uYC44+borWqaeKOK5cF5Uf3G13/o8GrCNp/V2MM
 O24DkcookM7u6CNe7dUHqiRBm00kjVmTXd6sEPSaSrtj3uJa/JaPkgynATdefN/IiPQV
 OfHbqVhUOuUAGMTQZ1MX0tyzrQIhWXyZEvGSX/EKdxSbTq1g0VQ+4//Av5tN6hNjgX0I
 nvlUXUu6+vXG7kO+hjfHNyeD60KkLo1n8xRr+H5ab04sqMOePqz2VF8ONV3KjzpIIz6b
 hk3g==
X-Gm-Message-State: AOJu0YzjPetJvX5TfnuCPV0run+JG1LrOhKEjwlc4fuf8QKvfCXCXK9p
 I50KTMDOd+jwtzTlvpZfHdh38TN0DB7/aez/UW4136vE+GYpULYH
X-Gm-Gg: ASbGncsMRW7/OtJaXanD8FmqMemML4Karhv3eX5IgL+DFujSCWa07D3MtOsx6yq7RY5
 jn1D/g7LQgTzXEgwQIUhyi4BhLaSSAwbvivRbbvNTm0Rxg/xTd8n2SFvdpBhMN48aPLHXbcM176
 pyfOzkdSUuIvjx9eWsPBJBQYlft5USTqmDTQiuiOiAAtj6whcRQWKEG6cEsqsWqCNk3q8KYYY1C
 3dc/AITu1ofipQtyENBNAA3SNhJcAqLOLr5FXItxwdYhJfb25Rlbtl71Xy2+wRu576AMC6bjCIN
 yBJ/bZ7KTM7q6u1l6oWHJBLEb5z7ndfIwGSz0Ftx3w5ebPqXrtuRqoA=
X-Google-Smtp-Source: AGHT+IFAtmecsBqXBSwYoPthA8fUaN2nJlg0QONOJ+jC1nVEU/KTQhxfhegnqcnJlYqJSVPEqBHA1A==
X-Received: by 2002:a05:6a21:4910:b0:1f5:8179:4f47 with SMTP id
 adf61e73a8af0-1f5817954aamr8270747637.20.1741670166166; 
 Mon, 10 Mar 2025 22:16:06 -0700 (PDT)
Received: from [147.47.189.163] ([147.47.189.163])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-736cf005d87sm4063798b3a.49.2025.03.10.22.16.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Mar 2025 22:16:05 -0700 (PDT)
Message-ID: <e7e4e5d5-931d-4506-9d75-b87783011379@gmail.com>
Date: Tue, 11 Mar 2025 14:16:02 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
From: Kyungwook Boo <bookyungwook@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741670167; x=1742274967; darn=lists.osuosl.org;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gLdloximMvRWgEEGkWNTCSJkS0eV4oAKG5hy6Bb4LfE=;
 b=Ig/4sJhyjNz5H5fajzG+FTMHCRAz0KYxey/HdfOPji193DeJtl2BOJJ7Qg3iK4xtgq
 OQ0eoodObwgnZSdDMgl/PYpDTCYR0nu5OmdxyLuUNTecL89Ay0mL9ToZNs783N6h1Sau
 3QD4g6+HydfvTsK6YQ/dLu8OGph/Mtnvngwo3TmTH9RXnnYrJwEWlmynWwPiL0qkAvk7
 D27XkaKiq0RULrD9l31bpmzd+FzoIoi5dUIUWnbYG1D03AkWs/5sINIYXVef6eIvnQ6U
 vXAdRFx/AqJCeo/5n0qEBcU3pg/1t8+dcT6n50KdOaGy6sXIZyEfe1gDXyfUV496beTC
 U4Rg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Ig/4sJhy
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: fix MMIO write access
 to an invalid page in i40e_clear_hw
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

When the device sends a specific input, an integer underflow can occur, leading
to MMIO write access to an invalid page.

Prevent the integer underflow by changing the type of related variables.

Signed-off-by: Kyungwook Boo <bookyungwook@gmail.com>
Link: https://lore.kernel.org/lkml/ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com/T/
---
Changes in v2:
- Formatting properly
- Fix variable shadowing
- Link to v1: https://lore.kernel.org/netdev/55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com/
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 370b4bddee44..b11c35e307ca 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -817,10 +817,11 @@ int i40e_pf_reset(struct i40e_hw *hw)
 void i40e_clear_hw(struct i40e_hw *hw)
 {
 	u32 num_queues, base_queue;
-	u32 num_pf_int;
-	u32 num_vf_int;
+	s32 num_pf_int;
+	s32 num_vf_int;
 	u32 num_vfs;
-	u32 i, j;
+	s32 i;
+	u32 j;
 	u32 val;
 	u32 eol = 0x7ff;
 
---
base-commit: 4d872d51bc9d7b899c1f61534e3dbde72613f627

Best regards,
Kyungwook Boo
