Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Is5KKcvvGnquAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2552CFBE6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD03E40FC4;
	Thu, 19 Mar 2026 17:17:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KhPId2PdxrNu; Thu, 19 Mar 2026 17:17:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E31E41072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773940640;
	bh=ZnSb5Lc1a/qEmrNjUZt+iozQpg8AU9Sb33OjOabZnec=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uLAAk3RMcjgGEwMuNg8kRkYE+IltqDneyKO1MxYL0G6oYLxx3UjuRmn7gf6Y9jJ6c
	 hI+PqoSqQivT81H44dMgIiBua9kqjRdM1khPyJgHUjvVp1tc5WWR910d1CY1SEwx+W
	 A1BStNRAw/iwRyL9LC39Ygl4ds8g2dTb2aZRsXsdtWvlOe12lwB6C4nEAjQV53BemT
	 GJKHzh8LM5s9huvvi4/tEjw3o6FcGhj7LotU6Eu75VyhZ42CBxqLx3B9rz88bJ73+u
	 OmJ4ou/jVaf8k3fpPlTBsH+llGb0ri8uGZi3s6JRGc6kDlEa9KVzokNNF4D2AhJDl6
	 q+kehBon173IA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E31E41072;
	Thu, 19 Mar 2026 17:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3ECDE265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 245D5615FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4x3USoH2Reft for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 17:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C9FB6069B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C9FB6069B
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C9FB6069B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:17 +0000 (UTC)
Received: from ms-a2 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62JHGtln076728
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 20 Mar 2026 02:16:55 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kohei.enju@gmail.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Thu, 19 Mar 2026 17:16:41 +0000
Message-ID: <20260319171650.5815-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=ZnSb5Lc1a/qEmrNjUZt+iozQpg8AU9Sb33OjOabZnec=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773940615; v=1;
 b=bGBc4LJvuOOJw9EdeXCGzMUTIIeDyDSJE5i7QwHUiXkKGOnbAEINK49qfEPEVHt3
 JCrnNDr8GPCVfCmaKmHWH9WMw/rck3zgsNyVIcJV9xJ7nla3Oi+BZXfr0wF1pIk8
 r6F24g3EzAI1eyVbuPp8HFFp9R/yyE2J6GVhtDcIWMZy6zCJCH3B5OxfehUanB0L
 WUAwAxvE9KP45WROZwB8Xpr/HBx7jALTH7+ptX+l7FKrjTF1Bc+beDuV+CMuQIf6
 5DvJL9vWWipyRrG5cLo7HFA0Oz7/qnVTXqlyLkjkEPhlkOZohmj+SXITKq4b2xY5
 M5QVeD0JKaXoMpmShjH63w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=bGBc4LJv
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/3] i40e: support XDP
 metadata ops (RX
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1E2552CFBE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for XDP metadata ops. Since the i40e RX
timestamps are not available from the RX descriptor in the XDP path,
this series doesn't implement bpf_xdp_metadata_rx_timestamp().

Patch 1/3 prepares i40e_xdp_buff for subsequent patches.
Patch 2/3 and 3/3 introduce bpf_xdp_metadata_rx_hash() and
bpf_xdp_metadata_rx_vlan_tag() respectively.

Tested on Intel Corporation Ethernet Controller X710 for 10GbE SFP+ with
./tools/testing/selftests/bpf/xdp_hw_metadata.
Since i40e doesn't support HWTSTAMP_FILTER_ALL as an rx_filter, I
locally changed the selftest to use HWTSTAMP_FILTER_NONE instead.

Kohei Enju (3):
  i40e: prepare for XDP metadata ops support
  i40e: add support for bpf_xdp_metadata_rx_hash()
  i40e: add support for bpf_xdp_metadata_rx_vlan_tag()

 drivers/net/ethernet/intel/i40e/i40e_main.c | 51 ++++++++++++++++++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |  7 ++-
 drivers/net/ethernet/intel/i40e/i40e_type.h |  5 ++
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 12 +++++
 5 files changed, 77 insertions(+), 3 deletions(-)

-- 
2.51.0

