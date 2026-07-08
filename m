Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UO7PC7zXTmoQVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 01:05:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8241472B07F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 01:05:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=5NJmZUeR;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E97F4075D;
	Wed,  8 Jul 2026 23:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YV4xuJ2TvOe8; Wed,  8 Jul 2026 23:05:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F51440603
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783551929;
	bh=au4REDALGPbRd4qyDPkjSmLLWroBmZZ1WT6/m3cMYNs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5NJmZUeRD8Jpaf3l9ioW7AjNqvynYwZyeRLPQEFYH5e65zq7xa0bPe5vLISiIPuqt
	 33Vp+pD84blDSRKdXP1vTOCyzw6QvAxsmAINm0kXSGJD9zsh6Jz+2cCaS2pv7Ydw/J
	 O1lzAjWFNHmL5A5nRDh+16FrtCNEwl3Yd/06AtM4BfYvS6P/p3V2e8sduZcXIWq44f
	 Oc8gtCfGMBvnqRcUbxdsR79ErcJmKn9WDWOl8UxaKzzEYLuRHV05ux0FNDM0JbMAwe
	 GtIhFlIQlp9XfBbqRJ6waVpYs/7z0ZdbQgvkRCZDPbp81+IofngNU7UcnDh1phQe5e
	 5N3lBSTGtPyPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F51440603;
	Wed,  8 Jul 2026 23:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 21B732FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1237780C97
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYGuGGnTD45S for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 22:57:02 +0000 (UTC)
X-Greylist: delayed 8509 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 08 Jul 2026 22:57:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D21B80A70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D21B80A70
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:b747:3006:205::11; helo=outbound.qs.icloud.com;
 envelope-from=deliran@verdict.gg; receiver=<UNKNOWN> 
Received: from outbound.qs.icloud.com (qs-2005b-snip6-4.eps.apple.com
 [IPv6:2a01:b747:3006:205::11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D21B80A70
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:01 +0000 (UTC)
Received: from outbound.qs.icloud.com (unknown [127.0.0.2])
 by p00-icloudmta-asmtp-us-east-2d-10-percent-0 (Postfix) with ESMTPS id
 BC03030000A3; Wed, 08 Jul 2026 20:35:15 +0000 (UTC)
X-ICL-RepId: 019f4371-226b-7a27-8744-4bf09211985f
X-ICL-Out-Info: HUtFAUMHWwJACUgBTUQeDx5WFlZNRAJCTQhICkMGWQJeCEABQwVdEhVdRVcIWwJAEVc4RQhFD1sTTVZUChcNVk1PHUEJXghGXl4fEx9UVgFDGRBWAVhWXQVNGlwYWQ8cAUpWWg5bBEcUFxtcABcbRgIEIwJfAEUCXglWATAXD1ZNTx1BCV4IRl5eHxMAXg8PTAtIAVsHXAJIC0gAWQZbHEQMSQFcGlwfFFwUWh9WBXIGXApXBFQfHBdeRhMZThtXTVoNQBlYBm0UVhVSBFk=
mail-alias-created-date: 1621344842221
Received: from DelNac.mail.msk (unknown [17.57.155.37])
 by p00-icloudmta-asmtp-us-east-2d-10-percent-0 (Postfix) with ESMTPSA id
 D6FB33001133; Wed, 08 Jul 2026 20:35:09 +0000 (UTC)
From: Vladimir Vdovin <deliran@verdict.gg>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Shuah Khan <shuah@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Jakub Sitnicki <jakub@cloudflare.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Vladimir Vdovin <deliran@verdict.gg>
Date: Wed,  8 Jul 2026 23:34:10 +0300
Message-ID: <20260708203410.45121-7-deliran@verdict.gg>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260708203410.45121-1-deliran@verdict.gg>
References: <20260708203410.45121-1-deliran@verdict.gg>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDIwMiBTYWx0ZWRfX5DLLJJfIo833
 mlI4XeWHxNp1CUh17CwXchncUfu5QCYc24ImhIyw8NZgQJ7219CRguKNXVbpQHPL3+OrL/K6O2+
 BhPfQtQR8MGoInIIqXlJ4Gpa0qEWkiRZ1dD2dm6hd/dsURY6ZLW4n4vRTf0OP8poMPaI9lY/iiV
 0PJ+fDvGc4ukudW8zYTRSh14tS0wbikbpA6ROmD3k5gA7gugxI2HCT5yqL1Tv7GpNcaY/3gEQYO
 QM0uZtRk4poDbhETTcIg0qoMoHN3Ij4/tuGxcPbsWwrEZTc4oqyNDux6VOgoirUa8m0JDAM5mmZ
 Mg435n5jSuNgyoMXPdw
X-Proofpoint-ORIG-GUID: sLYEc1WpMdFxjTRWa13G-6KjpVxsQjjP
X-Proofpoint-GUID: sLYEc1WpMdFxjTRWa13G-6KjpVxsQjjP
X-Mailman-Approved-At: Wed, 08 Jul 2026 23:05:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdict.gg; s=sig1; t=1783542919; x=1786134919;
 bh=au4REDALGPbRd4qyDPkjSmLLWroBmZZ1WT6/m3cMYNs=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme;
 b=il+CobxdjWqcBnKnWfjzAcHqy9/yEj6NeMoRZgrHoJ/veiQ/h8QeFIp7WCfOmkFwscUacm01Vux0cOJWlb/sMieaGfBvJtG5cgZnIChsfykUeBg4RoGWHfeCX3VBH1zqkx43FzGGcbNtVetC9jgo6Mz9iSTr4oaP6ZEj5xT528N9MvVd4pUVXbI463VVPi1g/a7TRzURTt4z/pSc7/YncTOKeYtaxTRc/tw0hwdNFf1BrgFDBrFBJiAKKoq8RunUxDP28OCGmkqF96QWF6/irHcbPONAOUj3/kKy+gbvtUlKfBmaVE+AL+TjeU1dXABaY2KjItrIqoOageghFEfL1w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=verdict.gg
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=verdict.gg header.i=@verdict.gg header.a=rsa-sha256
 header.s=sig1 header.b=il+Cobxd
Subject: [Intel-wired-lan] [PATCH bpf-next v4 6/6] selftests: drv-net: add
 XDP RX checksum metadata tests
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:deliran@verdict.gg,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[verdict.gg];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[deliran@verdict.gg,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,lib.py:url];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deliran@verdict.gg,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8241472B07F

Extend the xdp_metadata.py driver test with coverage for
bpf_xdp_metadata_rx_checksum().

Add an xdp_rx_csum program to xdp_metadata.bpf.o that reads the RX
checksum verdict and stores the ip_summed bitmask, the hw checksum
value and the checksum level into a map.  The L4 port/protocol filter
is the same as in the existing xdp_rss_hash program, so move it into a
common helper.

The new cases only run on devices whose driver implements the
xmo_rx_checksum callback, detected through the "checksum" bit of the
xdp-rx-metadata-features netlink attribute; on other devices they
report SKIP:

 - xdp_rx_csum_valid (tcp/udp variants): traffic with a correct
   checksum sent from the remote endpoint must be reported with a
   usable verdict, i.e. CHECKSUM_UNNECESSARY and/or CHECKSUM_COMPLETE.
   CHECKSUM_NONE is a legitimate verdict for a device that does not
   verify the packets (e.g. veth reports it for locally generated
   CHECKSUM_PARTIAL traffic), so it results in SKIP rather than in a
   failure;

 - xdp_rx_csum_invalid: UDP packets with a corrupted L4 checksum
   (sent with the net/lib csum tool) must not be reported as
   CHECKSUM_UNNECESSARY.

Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
---
 .../selftests/drivers/net/hw/xdp_metadata.py  | 110 +++++++++++++++++
 .../selftests/net/lib/xdp_metadata.bpf.c      | 112 ++++++++++++++++--
 2 files changed, 209 insertions(+), 13 deletions(-)

diff --git a/tools/testing/selftests/drivers/net/hw/xdp_metadata.py b/tools/testing/selftests/drivers/net/hw/xdp_metadata.py
index 33a1985356d9..1a623771477b 100644
--- a/tools/testing/selftests/drivers/net/hw/xdp_metadata.py
+++ b/tools/testing/selftests/drivers/net/hw/xdp_metadata.py
@@ -8,6 +8,8 @@ These tests load device-bound XDP programs from xdp_metadata.bpf.o
 that call metadata kfuncs, send traffic, and verify the extracted
 metadata via BPF maps.
 """
+import time
+
 from lib.py import ksft_run, ksft_eq, ksft_exit, ksft_ge, ksft_ne, ksft_pr
 from lib.py import KsftNamedVariant, ksft_variants
 from lib.py import CmdExitFailure, KsftSkipEx, NetDrvEpEnv
@@ -81,8 +83,22 @@ _RSS_KEY_TYPE = 1
 _RSS_KEY_PKT_CNT = 2
 _RSS_KEY_ERR_CNT = 3
 
+_CSUM_KEY_IP_SUMMED = 0
+_CSUM_KEY_CKSUM = 1
+_CSUM_KEY_LEVEL = 2
+_CSUM_KEY_PKT_CNT = 3
+_CSUM_KEY_ERR_CNT = 4
+
 XDP_RSS_L4 = 0x8  # BIT(3) from enum xdp_rss_hash_type
 
+# Mirror of enum xdp_checksum from include/net/xdp.h
+XDP_CHECKSUM_NONE = 0x1
+XDP_CHECKSUM_UNNECESSARY = 0x2
+XDP_CHECKSUM_COMPLETE = 0x4
+
+# Fixed destination port of the net/lib csum tool
+_CSUM_TOOL_PORT = 34000
+
 
 @ksft_variants([
     KsftNamedVariant("tcp", "tcp"),
@@ -130,6 +146,98 @@ def test_xdp_rss_hash(cfg, proto):
             f"RSS hash type should include L4 for {proto.upper()} traffic")
 
 
+def _require_rx_csum_meta(cfg):
+    """Skip unless the device exposes XDP RX checksum metadata."""
+    dev_info = cfg.netnl.dev_get({"ifindex": cfg.ifindex})
+    rx_meta = dev_info.get("xdp-rx-metadata-features", [])
+    if "checksum" not in rx_meta:
+        raise KsftSkipEx("device does not support XDP rx checksum metadata")
+
+
+@ksft_variants([
+    KsftNamedVariant("tcp", "tcp"),
+    KsftNamedVariant("udp", "udp"),
+])
+def test_xdp_rx_csum_valid(cfg, proto):
+    """Test RX checksum metadata for packets with a correct checksum.
+
+    Loads the xdp_rx_csum program, sends traffic with a valid L4 checksum
+    from the remote endpoint, and verifies that the checksum verdict
+    reported via bpf_xdp_metadata_rx_checksum() is usable
+    (CHECKSUM_UNNECESSARY and/or a CHECKSUM_COMPLETE value).
+
+    CHECKSUM_NONE is a valid verdict for a device that did not verify
+    the packets (e.g. veth reports it for locally generated traffic,
+    which is CHECKSUM_PARTIAL on the skb), so it results in SKIP, not
+    in a failure.
+    """
+    _require_rx_csum_meta(cfg)
+
+    prog_info = _load_xdp_metadata_prog(cfg, "xdp_rx_csum")
+
+    port = rand_port()
+    bpf_map_set("map_xdp_setup", _SETUP_KEY_PORT, port)
+
+    csum_map_id = prog_info["maps"]["map_csum"]
+
+    _send_probe(cfg, port, proto=proto)
+
+    csum = bpf_map_dump(csum_map_id)
+
+    pkt_cnt = csum.get(_CSUM_KEY_PKT_CNT, 0)
+    err_cnt = csum.get(_CSUM_KEY_ERR_CNT, 0)
+    ip_summed = csum.get(_CSUM_KEY_IP_SUMMED, 0)
+
+    ksft_ge(pkt_cnt, 1, comment="should have received at least one packet")
+    ksft_eq(err_cnt, 0, comment=f"RX checksum error count: {err_cnt}")
+
+    ksft_pr(f"  ip_summed: {ip_summed:#x} cksum: "
+            f"{csum.get(_CSUM_KEY_CKSUM, 0):#010x} "
+            f"level: {csum.get(_CSUM_KEY_LEVEL, 0)}")
+    ksft_ne(ip_summed, 0, "the program should have stored a checksum verdict")
+    if not ip_summed & (XDP_CHECKSUM_UNNECESSARY | XDP_CHECKSUM_COMPLETE):
+        raise KsftSkipEx("device did not verify the packet checksum "
+                         "(CHECKSUM_NONE)")
+
+
+def test_xdp_rx_csum_invalid(cfg):
+    """Test RX checksum metadata for packets with a corrupted checksum.
+
+    Sends UDP packets with an intentionally bad L4 checksum using the
+    net/lib csum tool and verifies the device does not claim it validated
+    them: the CHECKSUM_UNNECESSARY bit must not be set.
+    """
+    _require_rx_csum_meta(cfg)
+
+    ipver = cfg.addr_ipver
+    bin_remote = cfg.remote.deploy(cfg.net_lib_dir / "csum")
+
+    prog_info = _load_xdp_metadata_prog(cfg, "xdp_rx_csum")
+
+    bpf_map_set("map_xdp_setup", _SETUP_KEY_PORT, _CSUM_TOOL_PORT)
+
+    csum_map_id = prog_info["maps"]["map_csum"]
+
+    cmd(f"{bin_remote} -i {cfg.remote_ifname} -n 20 -{ipver} "
+        f"-S {cfg.remote_addr} -D {cfg.addr} -r 1 -T -E",
+        host=cfg.remote)
+
+    # no receiver to synchronize against; let NAPI drain the last packets
+    time.sleep(1)
+
+    csum = bpf_map_dump(csum_map_id)
+
+    pkt_cnt = csum.get(_CSUM_KEY_PKT_CNT, 0)
+    ip_summed = csum.get(_CSUM_KEY_IP_SUMMED, 0)
+
+    ksft_ge(pkt_cnt, 1, comment="should have received at least one packet")
+
+    ksft_pr(f"  ip_summed: {ip_summed:#x}")
+    ksft_eq(ip_summed & XDP_CHECKSUM_UNNECESSARY, 0,
+            "device must not report CHECKSUM_UNNECESSARY for a corrupted "
+            "checksum")
+
+
 def main():
     """Run XDP metadata kfunc tests against a real device."""
     with NetDrvEpEnv(__file__) as cfg:
@@ -137,6 +245,8 @@ def main():
         ksft_run(
             [
                 test_xdp_rss_hash,
+                test_xdp_rx_csum_valid,
+                test_xdp_rx_csum_invalid,
             ],
             args=(cfg,))
     ksft_exit()
diff --git a/tools/testing/selftests/net/lib/xdp_metadata.bpf.c b/tools/testing/selftests/net/lib/xdp_metadata.bpf.c
index f71f59215239..70decae0a663 100644
--- a/tools/testing/selftests/net/lib/xdp_metadata.bpf.c
+++ b/tools/testing/selftests/net/lib/xdp_metadata.bpf.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <stddef.h>
+#include <stdbool.h>
 #include <linux/bpf.h>
 #include <linux/in.h>
 #include <linux/if_ether.h>
@@ -40,6 +41,24 @@ struct {
 	__uint(max_entries, 4);
 } map_rss SEC(".maps");
 
+/* RX checksum results: key 0 = ip_summed bitmask, key 1 = hw cksum value,
+ * key 2 = cksum level, key 3 = packet count, key 4 = error count.
+ */
+enum {
+	CSUM_KEY_IP_SUMMED = 0,
+	CSUM_KEY_CKSUM = 1,
+	CSUM_KEY_LEVEL = 2,
+	CSUM_KEY_PKT_CNT = 3,
+	CSUM_KEY_ERR_CNT = 4,
+};
+
+struct {
+	__uint(type, BPF_MAP_TYPE_ARRAY);
+	__type(key, __u32);
+	__type(value, __u32);
+	__uint(max_entries, 5);
+} map_csum SEC(".maps");
+
 /* Mirror of enum xdp_rss_hash_type from include/net/xdp.h.
  * Needed because the enum is not part of UAPI headers.
  */
@@ -55,8 +74,20 @@ enum xdp_rss_hash_type {
 	XDP_RSS_L4_ICMP = 1U << 8,
 };
 
+/* Mirror of enum xdp_checksum from include/net/xdp.h.
+ * Needed because the enum is not part of UAPI headers.
+ */
+enum xdp_checksum {
+	XDP_CHECKSUM_NONE = 1U << 0,
+	XDP_CHECKSUM_UNNECESSARY = 1U << 1,
+	XDP_CHECKSUM_COMPLETE = 1U << 2,
+};
+
 extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
 				    enum xdp_rss_hash_type *rss_type) __ksym;
+extern int bpf_xdp_metadata_rx_checksum(const struct xdp_md *ctx,
+					enum xdp_checksum *ip_summed,
+					__u32 *cksum, __u8 *cksum_level) __ksym;
 
 static __always_inline __u16 get_dest_port(void *l4, void *data_end,
 					   __u8 protocol)
@@ -78,41 +109,39 @@ static __always_inline __u16 get_dest_port(void *l4, void *data_end,
 	return 0;
 }
 
-SEC("xdp")
-int xdp_rss_hash(struct xdp_md *ctx)
+/* Return true when the packet matches the L4 protocol and destination
+ * port configured in map_xdp_setup (zero/unset filters match anything).
+ */
+static __always_inline bool xdp_match_setup(struct xdp_md *ctx)
 {
 	void *data_end = (void *)(long)ctx->data_end;
 	void *data = (void *)(long)ctx->data;
-	enum xdp_rss_hash_type rss_type = 0;
 	struct ethhdr *eth = data;
 	__u8 l4_proto = 0;
-	__u32 hash = 0;
-	__u32 key, val;
 	void *l4 = NULL;
-	__u32 *cnt;
-	int ret;
+	__u32 key;
 
 	if ((void *)(eth + 1) > data_end)
-		return XDP_PASS;
+		return false;
 
 	if (eth->h_proto == bpf_htons(ETH_P_IP)) {
 		struct iphdr *iph = (void *)(eth + 1);
 
 		if ((void *)(iph + 1) > data_end)
-			return XDP_PASS;
+			return false;
 		l4_proto = iph->protocol;
 		l4 = (void *)(iph + 1);
 	} else if (eth->h_proto == bpf_htons(ETH_P_IPV6)) {
 		struct ipv6hdr *ip6h = (void *)(eth + 1);
 
 		if ((void *)(ip6h + 1) > data_end)
-			return XDP_PASS;
+			return false;
 		l4_proto = ip6h->nexthdr;
 		l4 = (void *)(ip6h + 1);
 	}
 
 	if (!l4)
-		return XDP_PASS;
+		return false;
 
 	/* Filter on the configured protocol (map_xdp_setup key XDP_PROTO).
 	 * When set, only process packets matching the requested L4 protocol.
@@ -121,7 +150,7 @@ int xdp_rss_hash(struct xdp_md *ctx)
 	__s32 *proto_cfg = bpf_map_lookup_elem(&map_xdp_setup, &key);
 
 	if (proto_cfg && *proto_cfg != 0 && l4_proto != (__u8)*proto_cfg)
-		return XDP_PASS;
+		return false;
 
 	/* Filter on the configured port (map_xdp_setup key XDP_PORT).
 	 * Only applies to protocols with ports (UDP, TCP).
@@ -133,9 +162,24 @@ int xdp_rss_hash(struct xdp_md *ctx)
 		__u16 dest = get_dest_port(l4, data_end, l4_proto);
 
 		if (!dest || bpf_ntohs(dest) != (__u16)*port_cfg)
-			return XDP_PASS;
+			return false;
 	}
 
+	return true;
+}
+
+SEC("xdp")
+int xdp_rss_hash(struct xdp_md *ctx)
+{
+	enum xdp_rss_hash_type rss_type = 0;
+	__u32 hash = 0;
+	__u32 key, val;
+	__u32 *cnt;
+	int ret;
+
+	if (!xdp_match_setup(ctx))
+		return XDP_PASS;
+
 	ret = bpf_xdp_metadata_rx_hash(ctx, &hash, &rss_type);
 	if (ret < 0) {
 		key = RSS_KEY_ERR_CNT;
@@ -160,4 +204,46 @@ int xdp_rss_hash(struct xdp_md *ctx)
 	return XDP_PASS;
 }
 
+SEC("xdp")
+int xdp_rx_csum(struct xdp_md *ctx)
+{
+	enum xdp_checksum ip_summed = 0;
+	__u8 cksum_level = 0;
+	__u32 cksum = 0;
+	__u32 key, val;
+	__u32 *cnt;
+	int ret;
+
+	if (!xdp_match_setup(ctx))
+		return XDP_PASS;
+
+	ret = bpf_xdp_metadata_rx_checksum(ctx, &ip_summed, &cksum,
+					   &cksum_level);
+	if (ret < 0) {
+		key = CSUM_KEY_ERR_CNT;
+		cnt = bpf_map_lookup_elem(&map_csum, &key);
+		if (cnt)
+			__sync_fetch_and_add(cnt, 1);
+		return XDP_PASS;
+	}
+
+	key = CSUM_KEY_IP_SUMMED;
+	val = (__u32)ip_summed;
+	bpf_map_update_elem(&map_csum, &key, &val, BPF_ANY);
+
+	key = CSUM_KEY_CKSUM;
+	bpf_map_update_elem(&map_csum, &key, &cksum, BPF_ANY);
+
+	key = CSUM_KEY_LEVEL;
+	val = cksum_level;
+	bpf_map_update_elem(&map_csum, &key, &val, BPF_ANY);
+
+	key = CSUM_KEY_PKT_CNT;
+	cnt = bpf_map_lookup_elem(&map_csum, &key);
+	if (cnt)
+		__sync_fetch_and_add(cnt, 1);
+
+	return XDP_PASS;
+}
+
 char _license[] SEC("license") = "GPL";
-- 
2.47.0

