Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B639901AB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 12:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5ABB6841C9;
	Fri,  4 Oct 2024 10:55:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pzE604-6F2q0; Fri,  4 Oct 2024 10:55:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEB4A841B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728039320;
	bh=b3xnIJ9xJEF5dZzVmcC3z99NvsX4DJMfYW3BHeBLqjE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JZeApf78l1NzvPtys9aOvNH8dikn76Gq+2HUv3q/Sr3IG1yWe0UnoWvlquZ+OQpUi
	 oFTIN9Snm6icGaxROGA80Y44tsEQ7qWI30U77Pdv+bGgQOR43BEEqS7Qy8rX7BKW25
	 eU5t3K1Oqp+ha80qFu5+9/h7aNJRWIiG9WZKiTDg+kApSKj/0iXze6XOQicODAfSRY
	 HKuZvNS+oxeZClLXVTitIpL16AgrZxVID3xNW0loFgy0UaoBZyxQgmsR5jYgHak8iC
	 UA/KtdG11YFiNqLmGeq58cS4ZkE0Y3xq+bwoEw8KIk/HXpsXLGU2au3qpixIRNqvzJ
	 z6GRnvGsPwUIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEB4A841B4;
	Fri,  4 Oct 2024 10:55:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C39CA1BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B0EBA406C3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:55:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkKvYzBgYffe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 10:55:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1130; helo=mail-yw1-x1130.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F59D406C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F59D406C2
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com
 [IPv6:2607:f8b0:4864:20::1130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F59D406C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:55:17 +0000 (UTC)
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-6e23b300bf9so17935047b3.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2024 03:55:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728039316; x=1728644116;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=b3xnIJ9xJEF5dZzVmcC3z99NvsX4DJMfYW3BHeBLqjE=;
 b=kqa1ny4CqvizeNtvN1mHsx21H6Lazn4UXDZ8PdaxkhO7OU2gaW5HaxmMTsLIe9WLnE
 W5AE51F84eDUPhrRO2DYpc1t4GrJlrDKU1Y6ZcXzY2caBP2w/NmKQFvsEYes/VchWm4K
 +jco96BteR7VgYYQ/r+CPRucyyZFettDtQ9D6X1eAoxUNcHMcZ1SfcZRBo3GY4AjjqoC
 27JavKksU7Px1p1o3LJV+T59OMJzcrxrHJvuacLF7lJ1fN3W7fhh51C6t7KXBPJOvqji
 4S8oeJCoth4lGN9DHpa7J3ZT2Ci3bQ7CnGF4L25l/QWMDOCMn3uJcaVcot388WapCOP3
 4VdQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVYXBRp7f/PPvcYAzjxiUDo7dREht6+DMALg4uvzKk9oR0/UTFeKynU10xvf/P0irUsv3TH+Zli2FuH/JfT/3A=@lists.osuosl.org
X-Gm-Message-State: AOJu0YywYokCfa7NhRPbrxafyBFMVgKD3j3N6VMmpklq/3bYr/zQ+OOa
 9JQWMGudNlja5r029LPH0AG2+/3pacoa2gwkeCEAvQLKFE/lzCpqg+Ub7hXvZ68=
X-Google-Smtp-Source: AGHT+IHJtTMAHM+5jlGXnRFZgIzHdU4AHpitlBbCf/IAKX/gSdYDh1zGCko+1M5sDXvKG26SjRXZ9Q==
X-Received: by 2002:a05:6902:1ac9:b0:e28:6f55:1283 with SMTP id
 3f1490d57ef6-e28937e3e02mr1501823276.30.1728039316176; 
 Fri, 04 Oct 2024 03:55:16 -0700 (PDT)
Received: from localhost.localdomain ([12.191.77.58])
 by smtp.gmail.com with ESMTPSA id
 3f1490d57ef6-e2885d69bd6sm549817276.27.2024.10.04.03.55.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2024 03:55:15 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Fri,  4 Oct 2024 10:54:07 +0000
Message-Id: <20241004105407.73585-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728039316; x=1728644116; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=b3xnIJ9xJEF5dZzVmcC3z99NvsX4DJMfYW3BHeBLqjE=;
 b=OYjXsv1rw2NaoFiB5+Kog9JjtZizQc2XKsJVsZxiojIckCCh78R3t0+3CrHYPzEO9X
 BC2/f2TwdTzwMde9iC/7Ovo2LJY7QH++pl93Ao2cn9XTn7lEK5WgdrBOnKvp8aIXDbY+
 lZc8yl84Nb5SdcJ2HSm01n2buDXSh/ucfc/QU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=OYjXsv1r
Subject: [Intel-wired-lan] [net-next v3] idpf: Don't hard code napi_struct
 size
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: przemyslaw.kitszel@intel.com, Joe Damato <jdamato@fastly.com>,
 open list <linux-kernel@vger.kernel.org>, aleksander.lobakin@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 horms@kernel.org,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The sizeof(struct napi_struct) can change. Don't hardcode the size to
400 bytes and instead use "sizeof(struct napi_struct)".

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index f0537826f840..9c1fe84108ed 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -438,7 +438,8 @@ struct idpf_q_vector {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_q_vector, 112,
-			    424 + 2 * sizeof(struct dim),
+			    24 + sizeof(struct napi_struct) +
+			    2 * sizeof(struct dim),
 			    8 + sizeof(cpumask_var_t));
 
 struct idpf_rx_queue_stats {
-- 
2.34.1

