Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bau7IbvXTmoMVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 01:05:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5F172B078
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 01:05:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=fT9k+mUG;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 432BB6074C;
	Wed,  8 Jul 2026 23:05:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qr7vpVmo_ELu; Wed,  8 Jul 2026 23:05:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6872960722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783551928;
	bh=vYoBJPpO2uL4VVlcC7jV1/CXwJbaRqJ4IBmz5iXbOPY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fT9k+mUGiiD1xoG18yE7RdSqkXJm/kY1NQLOMvmow3On9qbt18Bt0ekn3mT+IQfJK
	 U2DPhHVmZg46uGFlFxl5GP8GCfEhC2fqsix/g7UDg3xtF8tlapkAKnykfsEL6nq1/x
	 9HPcrbkpUwqdbvaVc0m5530xJtJu9rSVlN4dHfSS3HbToX1ztN2cLupAZZAFn4TFsk
	 R4xBO6U4+jrmBSYSbut5R58iZ3BeQ5/digloM9r+4lkTSfseoFh5mwrL3PyygXSSSU
	 Oj1T4WmOSm+MS0ehMoQjFdrwRF5pjg+XEkhI78Tr5cN9+GscI4TCD/F7jz2Wwbg4/X
	 hvItg3jQfyX9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6872960722;
	Wed,  8 Jul 2026 23:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F31D3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 012864005B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DiQA27jIBXAz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 22:57:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:b747:3006:205::6a; helo=outbound.qs.icloud.com;
 envelope-from=deliran@verdict.gg; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7D04740050
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D04740050
Received: from outbound.qs.icloud.com (qs-2005k-snip6-3.eps.apple.com
 [IPv6:2a01:b747:3006:205::6a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D04740050
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:01 +0000 (UTC)
Received: from outbound.qs.icloud.com (unknown [127.0.0.2])
 by p00-icloudmta-asmtp-us-east-2d-10-percent-0 (Postfix) with ESMTPS id
 AAF11300009E; Wed, 08 Jul 2026 20:34:44 +0000 (UTC)
X-ICL-RepId: 019f4370-a882-708d-a5d5-81ada2bf8718
X-ICL-Out-Info: HUtFAUMHWwJACUgBTUQeDx5WFlZNRAJCTQhICkMGWQJeCEABQwVdEhVdRVcIWwJAEVc4RQhFD1sTTVZUChcNVk1PHUEJXghGXl4fEx9UVgFDGRBWAVhWXQVNGlwYWQ8cAUpWWg5bBEcUFxtcABcbRgIEIwJfAEUCXglWATAXD1ZNTx1BCV4IRl5eHxMAXg8PTAtIAVsHXAJIC0gAWQZbHEQMSQFcGlofFFwUWh9WBXIGXApXBFQfHBdeRhMZThtXTVoNQBlYBm0UVhVSBFk=
mail-alias-created-date: 1621344842221
Received: from DelNac.mail.msk (unknown [17.57.155.37])
 by p00-icloudmta-asmtp-us-east-2d-10-percent-0 (Postfix) with ESMTPSA id
 59B9B300110C; Wed, 08 Jul 2026 20:34:37 +0000 (UTC)
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
Date: Wed,  8 Jul 2026 23:34:04 +0300
Message-ID: <20260708203410.45121-1-deliran@verdict.gg>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: zQNJaRqpKCjpeW_8rRYGsYSRCFrT5GZ0
X-Proofpoint-GUID: zQNJaRqpKCjpeW_8rRYGsYSRCFrT5GZ0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDIwMiBTYWx0ZWRfX9zezX2Lhrufp
 JjcrUWu/fiGOYri9228fif3ZL5UFWsHAyW2yPCtM5nktzM0kbacRld5p7G55OUi02SwgJvZxjaV
 MHbc3uZad2dJ/4Kc78WXPZFfv4dUqA/wGw0kQtX3OoKX1UJnoW8ovhy3NLFMItV5jrxLk6h8lBw
 w6GBtsUDJepJ3NmXWb1z8GtG+cdc9eLol5GqEsidmhlYpG/keEdOq5RvsDTfCJ8p/EHa+GFzzvT
 9E3UdJAkriVJ4HNebPWvQ8d0hlOP2+IyLt0YwD10zi2/3K5CzJqInJfLHI2/v+T4FJ9r7gto5KM
 Mc3j51gPg8/YGpavaEh
X-Mailman-Approved-At: Wed, 08 Jul 2026 23:05:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdict.gg; s=sig1; t=1783542889; x=1786134889;
 bh=vYoBJPpO2uL4VVlcC7jV1/CXwJbaRqJ4IBmz5iXbOPY=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme;
 b=BA/ERtkciXMZdtqVL0IC3V5YrhWuOAuBDAEJHzjaZDvZchl4xVw1RkKMK8PIc5xKpuGqd/uKKmNcJzjSOrmZUYE8twb473mfaINObZcVWk84hoDdpTaIhF4l71NUUbZ7KNWecgQkcO7lIQhRHN/8bTmYb9ZJFXQkA4rrGZWwtyKct/wqO3luq8el0QS5TOnlW8A+HuK/xVHuiWzHDdIOobE0HiDdC4lBynQpnqpixjnU6/zK483FvoBnE7QIhhi2H313U+AMUXzbrVdj7kc3ojx3jKkaeeC+dZ4qMM0hvRh/y0cbZwwGW2LVpMdd0xYz/6cuWz/a1SGQldHC1LPfUg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=verdict.gg
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=verdict.gg header.i=@verdict.gg header.a=rsa-sha256
 header.s=sig1 header.b=BA/ERtkc
Subject: [Intel-wired-lan] [PATCH bpf-next v4 0/6] Add the capability to
 load HW RX checksum in eBPF programs
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,cloudflare.com:url];
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
X-Rspamd-Queue-Id: EB5F172B078

Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
RX checksum results in the eBPF program bound to the NIC.
Implement xmo_rx_checksum callback for veth and ice drivers.

If the hardware detects a wrong/failed checksum, it will report
CHECKSUM_NONE in the packet metadata. Moreover, CHECKSUM_NONE will be
returned even if the NIC can't parse the packet (e.g. if it does not
support a specific protocol). A possible use case for
bpf_xdp_metadata_rx_checksum() would be to implement a XDP DDoS
application [1] combining the info from bpf_xdp_metadata_rx_checksum()
and bpf_xdp_metadata_rx_hash() kfuncs in order to filter packets with a
wrong/failed checksum.

This is a repost of Lorenzo's series, rebased on top of net-next, with
a new drv-net selftest for the RX checksum metadata added on top of it,
as Lorenzo suggested [2].

A note on the new selftest semantics: for traffic with a correct
checksum the test requires a usable verdict (CHECKSUM_UNNECESSARY
and/or CHECKSUM_COMPLETE) but reports SKIP on CHECKSUM_NONE, since the
API allows devices that do not verify the packets (e.g. veth reports
NONE for locally generated CHECKSUM_PARTIAL traffic). For corrupted
packets it only asserts that CHECKSUM_UNNECESSARY is not set, as
CHECKSUM_COMPLETE legitimately carries the raw checksum of bad packets
too.

[1] https://blog.cloudflare.com/unimog-cloudflares-edge-load-balancer/
[2] https://lore.kernel.org/r/ak5ox296M46FAcWX@lore-desk

---
Changes in v4:
- Report ip_summed as a bitmask of XDP_CHECKSUM_* values and return the
  hw checksum and the checksum level via dedicated
  bpf_xdp_metadata_rx_checksum() arguments
- Rebase on top of net-next
- Add a drv-net selftest for the XDP RX checksum metadata
- Link to v3: https://lore.kernel.org/r/20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org

Changes in v3:
- Remove leftover assignment from v2 in veth_xdp_rx_checksum()
- Fix typos
- Fix commit logs
- Link to v2: https://lore.kernel.org/r/20260213-bpf-xdp-meta-rxcksum-v2-0-a82c4802afbe@kernel.org

Changes in v2:
- Remove XDP_CHECKSUM_PARTIAL definition
- Improve veth_xdp_rx_checksum() callback
- Fix uninitialized case for cksum_meta in ice_get_rx_csum()
- Fix sparse warnings in ice driver
- Fix typos
- Link to v1: https://lore.kernel.org/r/20260210-bpf-xdp-meta-rxcksum-v1-0-e5d55caa0541@kernel.org

Changes in v1:
- Rebase on top of bpf-next
- Test ice driver using xdp_hw_metadata tool available in the bpf
  kernel selftest
- Improve cover letter with an use-case for
  bpf_xdp_metadata_rx_checksum()
- Link to RFC v2: https://lore.kernel.org/r/20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org

change-id: 20250925-bpf-xdp-meta-rxcksum-900685e2909d

Lorenzo Bianconi (5):
  netlink: specs: Add XDP RX checksum capability to XDP metadata specs
  net: veth: Add xmo_rx_checksum callback to veth driver
  net: ice: Add xmo_rx_checksum callback
  selftests/bpf: Add selftest support for bpf_xdp_metadata_rx_checksum
  selftests/bpf: Add bpf_xdp_metadata_rx_checksum support to
    xdp_hw_metadat prog

Vladimir Vdovin (1):
  selftests: drv-net: add XDP RX checksum metadata tests

 Documentation/netlink/specs/netdev.yaml       |   5 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 123 ++++++++++++------
 drivers/net/veth.c                            |  32 +++++
 include/net/xdp.h                             |  18 +++
 include/uapi/linux/netdev.h                   |   3 +
 net/core/xdp.c                                |  32 +++++
 tools/include/uapi/linux/netdev.h             |   3 +
 .../selftests/bpf/prog_tests/xdp_metadata.c   |   9 ++
 .../selftests/bpf/progs/xdp_hw_metadata.c     |   7 +
 .../selftests/bpf/progs/xdp_metadata.c        |   2 +
 tools/testing/selftests/bpf/xdp_hw_metadata.c |  31 +++++
 tools/testing/selftests/bpf/xdp_metadata.h    |  13 ++
 .../selftests/drivers/net/hw/xdp_metadata.py  | 110 ++++++++++++++++
 .../selftests/net/lib/xdp_metadata.bpf.c      | 112 ++++++++++++++--
 14 files changed, 445 insertions(+), 55 deletions(-)


base-commit: 08030ddb87b4c6c6a2c03c82731b5e188f02f5b9
-- 
2.47.0

