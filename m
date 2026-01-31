Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AH1RMUoufmlLWQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 17:31:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1ADC301F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 17:31:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDAB260B68;
	Sat, 31 Jan 2026 16:31:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yOOT_vo8ZGUi; Sat, 31 Jan 2026 16:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E28C60B66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769877064;
	bh=/LaTNBzU1ZqwGjSbsitnVGu2AjeEHf5402YTnnjokBU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5PfpihYaQVvYoZigyANTB/jK774fza4waZpoijH/jD8OMqgQexPkETT8ytnHu4MOk
	 MJ9OoOwg/530n+9ch2ejiiiwodpMvPYmyf9hAChyPXepSQd8GTG5dF8v9sutjUjl07
	 OhwCf0j3YJSZ0uvGEf0pMOZIdXElyXEVXgZX7GPMqmN/FhuAGL6ygES81vBPQ1q88j
	 GNV/Mv06+bk30oKtrMMJgUdav7yGq9DRgJM3TB+9DJBT4Dr6krMjnmJ1CfyAmmh9yd
	 7ujqgyc+TqBrR7Y85jAGg2lU4HhzJZ5GNFZDC9ZEF2tuGyKn+UBX66U1SXMMBHhQiP
	 L7kqQaTHXmjWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E28C60B66;
	Sat, 31 Jan 2026 16:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C337E1E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B19EC40826
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zzoIhuF_RcbU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 16:31:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 580DA40711
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 580DA40711
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 580DA40711
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:30:59 +0000 (UTC)
Received: from ms-a2 (248.212.13.160.dy.iij4u.or.jp [160.13.212.248])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60VGUcS2039137
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 1 Feb 2026 01:30:39 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Simon Horman <horms@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 kohei.enju@gmail.com, Kohei Enju <kohei@enjuk.jp>
Date: Sat, 31 Jan 2026 16:29:35 +0000
Message-ID: <20260131163037.88108-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=/LaTNBzU1ZqwGjSbsitnVGu2AjeEHf5402YTnnjokBU=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1769877039; v=1;
 b=up6oGSR0BnRs59uNdGoleUeQWdyRDQ1MElhF4/8+iH5g+NjR6xMa5NPi0uQGc0Lc
 Sn8X6xDFmfx5RnABSQEnBr4vEdlmxHqxr0YlNjIVnne6sy2f7rW1iip0mRLmN+wO
 bfT+FxNqbgTnU9MNTQu2DFS1eAzeDKSVN+S5m6PvR82Cux/11vQhSlQxGCQvXn3O
 1cU6d4yMVvlHPgabxes/UyCw7oJWaeuSsSMrkmvNzj6kpBvLx2ttCdP06MLfDP/N
 i1mVIfqUHxCV3TJrP0J05yxRgfRcFqQxtFC5Hx+XWOcO85GD1EJAtr2m9A7s7LXw
 tT37C7Wd08/g9ZsTVq/mfw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=up6oGSR0
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/3] igc: add RSS key get/set
 support
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,rss_api.py:url];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 3B1ADC301F
X-Rspamd-Action: no action

This series adds ethtool get/set support for the RSS hash key.

Without patch:
 # ethtool -x $DEV | grep key -A1
 RSS hash key:
 Operation not supported
 # ethtool -X $DEV hkey be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef
 Cannot set RX flow hash configuration:
  Hash key setting not supported

With patch:
 # ethtool -x $DEV | grep key -A1
 RSS hash key:
 dd:7c:1f:06:1a:42:dc:e5:7e:90:2c:48:aa:3f:5d:5a:d7:da:ec:44:3e:3f:df:78:89:1e:3c:68:2e:59:da:a0:23:5a:32:5c:cf:5e:7e:7b
 # ethtool -X $DEV hkey be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef
 # ethtool -x $DEV | grep key -A1
 RSS hash key:
 be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef:be:ef

Also tested with rss_api.py and toeplitz.py.
 # ./tools/testing/selftests/drivers/net/hw/rss_api.py | grep rss_api.test_rxfh_nl_set_key
 ok 6 rss_api.test_rxfh_nl_set_key
 # tools/testing/selftests/drivers/net/hw/toeplitz.py | grep "# Totals"
 # Totals: pass:12 fail:0 xfail:0 xpass:0 skip:0 error:0

Notes:
Since the 2/3 patch is unchanged, I preserved Tested-by and Reviewed-by
tags for the patch.

Changes:
  v2:
    - call netdev_rss_key_fill() in igc_sw_init(), not in
      igc_setup_mrqc()
    - add documentation for igc_write_rss_key()
    - drop has_user_rss_key flag, since rss_key is never cleared except
      for user operations
    - change email address from @amazon.com to @enjuk.jp
  v1: https://lore.kernel.org/intel-wired-lan/20251025150136.47618-1-enjuk@amazon.com/

Kohei Enju (3):
  igc: prepare for RSS key get/set support
  igc: expose RSS key via ethtool get_rxfh
  igc: allow configuring RSS key via ethtool set_rxfh

 drivers/net/ethernet/intel/igc/igc.h         |  3 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 67 +++++++++++++++-----
 drivers/net/ethernet/intel/igc/igc_main.c    |  8 +--
 3 files changed, 57 insertions(+), 21 deletions(-)

-- 
2.51.0

