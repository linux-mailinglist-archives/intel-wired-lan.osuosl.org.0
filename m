Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B79D7A810F2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 17:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6290660E13;
	Tue,  8 Apr 2025 15:58:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mUishsxOAEjL; Tue,  8 Apr 2025 15:58:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB84360760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744127929;
	bh=jaVO28FUsf/+j+eVB0JXUktqw+0W3V93Ws76bANlpTw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xIMIIQCABOlNsqWYLornP9FSzcUJ3a0BUdLOWIJ8YmmoLbKDV/NzRDB4YEcyRp8BC
	 TkZCNs6yedkV7ql/LLWD6UT0a3p2bo44jMpLedTjLWbGFAKoTRUS8bnQUw/9wtMhHU
	 kUZD/xDGr89Ndnrna3KIefla3vlS9i7U1k61/tChPLndYcTPyHbG8yBvVpPI/zthLe
	 4JGBnAP09qX15z3kiZBXBwZelJxzA9PmTcMpU/BpwtgL3x3aYpYwKMQ/oS/EUKjESQ
	 PQSfb46ldxZdaTJkxWowsEZCywprjIhQy2oj+nTAIKT8Qi1vQfYRBUAEz4b/HuOd/j
	 lSdsebdXF2jnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB84360760;
	Tue,  8 Apr 2025 15:58:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AE3D21F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F4314029A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:58:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iP-_OAOcSWqr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 15:58:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d63; helo=mail-io1-xd63.google.com;
 envelope-from=mpazdan@arista.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E25CA4007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E25CA4007D
Received: from mail-io1-xd63.google.com (mail-io1-xd63.google.com
 [IPv6:2607:f8b0:4864:20::d63])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E25CA4007D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:58:46 +0000 (UTC)
Received: by mail-io1-xd63.google.com with SMTP id
 ca18e2360f4ac-85b3f92c8f8so519178339f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Apr 2025 08:58:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744127926; x=1744732726;
 h=content-transfer-encoding:references:in-reply-to:message-id:date
 :subject:cc:to:from:dkim-signature:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jaVO28FUsf/+j+eVB0JXUktqw+0W3V93Ws76bANlpTw=;
 b=iUQnvT1SAOPRqa9M6t1fiJ0JbTjnewWEk5R9EvESO2i/MQ53qqNllvSFK8Sx6c++45
 GKkONnUvPtOI/TQpcv5ZTLY9BA/mapBxpzUc2TUY1VizGXVwhh1JTF/7MhGtwIt6FibG
 5wd/zihPt0kb72xNb+fpb3+9YeWqoHLzaYOBUa/CP25QLCzOnJar9YHMaLWVoMH9/8ZG
 JfEydPAmYgcM8U2FNAry+DlalPW+442qxyiVBxEGv4a3corbfr+HUhz/A8SB3urQZRPO
 amH++kdSJT5boN0q+YqlfHQhcVXsBX7PhIspZ5tzmtJs+6sa2T+VTRed3MzVv7Uj28R3
 2YEQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXY2gXUdpOx2iJiBRa/JsNEKoEu70MIipZBmPbZwk8aDfbxTxjnvXNCEATlIjg7cA15S/4jsZhbInRiCgLpYXo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxzfx4yNUCWvdmsdHV7Xxx+BNu7VahSt84U/UZFIqUKQRPCfj/u
 Bh96MlCR/B2NotddTB0il2RCN8eJ6CRspXyAALJMK/A5nXpM9WKGbFMxYywO+1uVKGnCGTRzG4F
 XsZA+BlQ0kNNIAPcsu1PKi1WUjPn/wQ==
X-Gm-Gg: ASbGncuNHRejEPt5mpH7uK4aYhpHlDyzyuU0TkQzfilxwQwsUwG8A3W3Bw6HoCUafgN
 M3KkqHgqQFcikt2UTITeMaHjINP28qvtOgkBf0vd0z/4ZemLG3Eqw0cE+qsxryXwhg+IDCMuHUM
 amKNypXxpWq3Em8K6ztrSTj7fNh9/38OTwMUqJjdGpOmd3QlMhAkuYmDdWgawEu4F6H/ViQ3Uhf
 8aJkJ+uSCVi6xiIhc3hoQlmFJkgRv65bsAbwINgqQqvc4BZs64xKbwL55nQFh2rzt2zeoXcb+iB
 OIeKePoN39FtQzQaBpCoCBilmsg=
X-Google-Smtp-Source: AGHT+IEUKMpwu6G2eNbCLy7G2hpZnc7p/3gu0cXPUTvBdg3n05YEdQqhBspTylBX68cRhCoAQd3hqLSwSNn3
X-Received: by 2002:a05:6e02:1aab:b0:3d4:3fed:81f7 with SMTP id
 e9e14a558f8ab-3d6ec594cbbmr139695615ab.19.1744127925943; 
 Tue, 08 Apr 2025 08:58:45 -0700 (PDT)
Received: from smtp.aristanetworks.com ([74.123.28.25])
 by smtp-relay.gmail.com with ESMTPS id
 e9e14a558f8ab-3d703b6c997sm1199585ab.9.2025.04.08.08.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Apr 2025 08:58:45 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from mpazdan-home-zvfkk.localdomain
 (dhcp-244-168-54.sjc.aristanetworks.com [10.244.168.54])
 by smtp.aristanetworks.com (Postfix) with ESMTP id 0C1B610023B;
 Tue,  8 Apr 2025 15:58:45 +0000 (UTC)
Received: by mpazdan-home-zvfkk.localdomain (Postfix, from userid 91835)
 id 0560440B1D; Tue,  8 Apr 2025 15:58:45 +0000 (UTC)
X-SMTP-Authentication: Allow-List-permitted
X-SMTP-Authentication: Allow-List-permitted
From: Marek Pazdan <mpazdan@arista.com>
To: kory.maincent@bootlin.com
Cc: aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, daniel.zahka@gmail.com,
 davem@davemloft.net, ecree.xilinx@gmail.com, edumazet@google.com,
 gal@nvidia.com, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 jianbol@nvidia.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
 mpazdan@arista.com, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, willemb@google.com
Date: Tue,  8 Apr 2025 15:54:14 +0000
Message-ID: <20250408155844.30790-1-mpazdan@arista.com>
In-Reply-To: <20250407153203.0a3037d7@kmaincent-XPS-13-7390>
References: <20250407153203.0a3037d7@kmaincent-XPS-13-7390>
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1744127925;
 bh=jaVO28FUsf/+j+eVB0JXUktqw+0W3V93Ws76bANlpTw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OrAdb8Gi7kK42a9cG8OQD4nUjCJBGi3FAoNaKh8E2cXUj+0b3ObrsD39TrEIr8Pgv
 K3rGJSm2AKRAHDr+BfxIR3xB1yps+6az/gW1yk8PJR8mSi5Pe+TXE95xk3pDKPAQMD
 QaY5pqM0eq61PLuqJvFSMbSNqIO8B2+pPCgspfh5xbH/sPQqej0dYzxBoT9uGJ/HQe
 8+wMntox3LmSshqP+t7fxT8Ul/9wilvWW8s29wlI0+YV+dSdxnGqrSWZrd/2DZcnKS
 eGcg+waTMhSNxsbA9DdQpV8LYrNfq5kWyXYp9iTxhWuzgoQhqsX9pUgq0Xls9nCbig
 QCYIX+BOAtxCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=arista.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=OrAdb8Gi
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ethtool: transceiver reset and
 presence pin control
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

On  Mon, 7 Apr 2025 15:32:03 +0200 Kory Maincent wrote:
> ETHTOOL_PHY_G/STUNABLE IOCTLs are targeting the PHY of the NIC but IIUC in your
> case you are targeting the reset of the QSFP module. Maybe phylink API is more
> appropriate for this feature.
> 
> You have to add net-next prefix in the subject like this [PATCH net-next 1/2]
> when you add new support to net subsystem.

Thanks for review.
From up to now replies I see that there are concerns regarding usage phy-tunable ethtool
option for this purpose, so I will post updated patches after we clarify proper way to go. 
I need to check more on phylink API, from the overview I read:
"phylink is a mechanism to support hot-pluggable networking modules directly connected
to a MAC without needing to re-initialise the adapter on hot-plug events.

phylink supports conventional phylib-based setups, fixed link setups
and SFP (Small Formfactor Pluggable) modules at present."

I don't see QSFP modules are being supported but I need to verify impact of this.
As I mentioned in other reply this API should allow for transceiver module reset 
from user space if orchestration agent detects transceiver failure state or when
it gets direct request from Cli.
