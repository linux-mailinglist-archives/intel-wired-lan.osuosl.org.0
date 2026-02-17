Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFCfKyEolGk2AQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 09:34:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5FD149F74
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 09:34:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DD3440CD6;
	Tue, 17 Feb 2026 08:34:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p7ChP2lFkZ2u; Tue, 17 Feb 2026 08:34:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BBCD40CCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771317277;
	bh=H3jL9wd7+AqHPCUpoJVlwDhfqcwAnMrrILuu2oEI2u4=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OKnHTGc5LlND/J9JB+VstQwt0q/e1WzmyinSz/QjEtkEQ4Egh4P0CFE/vhspjObEI
	 NjZ0meWylfCqRifiiTehe3JdIMFJ/L0CZglyqNGDenzPtmSc8hQsmPkoNsbasMtF5c
	 n9svnaTuiREUkOhZ9D5/Wf1OyMSpRIV1LpyenVEMGuzrpPQQPX+g5TPBrq8m6xHyUr
	 s3edEi7rjyrGoFv8O2jKPntPzY8/8Gmz/21v+oiDKfE8wksxoexH9B3KkEIctbgjeE
	 8GvEyDHOiMJGjjHxFj19LoVHdUvHuVV6z20tBIh5Wdl7IuZ/ClUPM48fCmfykdnJvn
	 3pAeERbJJy0ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BBCD40CCA;
	Tue, 17 Feb 2026 08:34:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3519B1EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 08:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19AA840CC3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 08:34:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WiBeHwaGbxeG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 08:34:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A71F40925
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A71F40925
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A71F40925
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 08:34:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6348340554;
 Tue, 17 Feb 2026 08:34:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5960C4CEF7;
 Tue, 17 Feb 2026 08:34:33 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Tue, 17 Feb 2026 09:33:55 +0100
Message-Id: <20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WOyw6CMBREf4V0bc3lQpG68j8Mi1Iu0CCPtEgwh
 H+3kJjoQl3OJOfMLMyRNeTYOViYpck403c+RIeA6Vp1FXFT+MwQUIBEwfOh5HMx8JZGxe2sG3d
 vuQRIUkEoQRbMo4Ol0sy79pr5XBs39vaxr0y4tX+EE3LgSR6VJNOTJhleGrId3Y69rbYBTyeAY
 fSDVinqOAVUZU7v9PZnCl8fNgt8sYTeQqIQQisFIv74kK3r+gRUGBv5PQEAAA==
X-Change-ID: 20250925-bpf-xdp-meta-rxcksum-900685e2909d
To: Donald Hunter <donald.hunter@gmail.com>, 
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
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
Cc: Jakub Sitnicki <jakub@cloudflare.com>, netdev@vger.kernel.org, 
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 linux-kselftest@vger.kernel.org, Lorenzo Bianconi <lorenzo@kernel.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771317274;
 bh=uL4DxKFzQP1l9k3Kk1Acq3jftmgv8xT3AxsRIN0UWhQ=;
 h=From:Subject:Date:To:Cc:From;
 b=J1G+E8GemW3j3SNkjeWUN98fLzNofnJDINU6InSnvliGxzY2vnwomAKb/qQVHgYvN
 bzHF0jxCfdhntCI1I6H6zVwhzmT5LWbYXx/ZCL+QlOTELVbhNiz+wrfjHSQoY90Ykh
 VwaVy26CmMK3kune0GOQ64+uYrfqOrmsSwKum7jTWZj9Znxm5e4SS6ZRNBC+CDpESj
 C7lELU7R6rLVRf/A+L/ocgrKROy03GXkaGzlxbJj77nN1LQ/iTpK1wjPo5cLaaR92L
 0xHAStfTeWy2FnJizFlKA5SjGojKYM6/fj8SlJ2KYCe1Z1HGjk/nQeoRR8VbWFSvOV
 oTYX7ZDLwIHcQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=J1G+E8Ge
Subject: [Intel-wired-lan] [PATCH bpf-next v3 0/5] Add the the capability to
 load HW RX checsum in eBPF programs
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:lorenzo@kernel.org,m:aleksandr.loktionov@intel.com,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:url,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7E5FD149F74
X-Rspamd-Action: no action

Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
RX cheksum results in the eBPF program binded to the NIC.
Implement xmo_rx_checksum callback for veth and ice drivers.

If the hardware detects a wrong/failed checksum, it will report
CHECKSUM_NONE in the packet metadata. Moreover, CHECKSUM_NONE will be
returned even if the NIC can't parse the packet (e.g. if it does not
support a specific protocol). A possible use case for
bpf_xdp_metadata_rx_checksum() would be to implement a XDP DDoS
application [1] combining the info from bpf_xdp_metadata_rx_checksum()
and bpf_xdp_metadata_rx_hash() kfuncs in order to filter packets with a
wrong/failed checksum.

[1] https://blog.cloudflare.com/unimog-cloudflares-edge-load-balancer/

---
Changes in v3:
- Remoe leftover assignment from v2 in veth_xdp_rx_checksum()
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

Changes in RFC v2:
- Squash patch 1/6 and 2/6
- Introduce enum xdp_checksum definitions
- Rework ice support to reuse ice_rx_csum codebase

---
Lorenzo Bianconi (5):
      netlink: specs: Add XDP RX checksum capability to XDP metadata specs
      net: veth: Add xmo_rx_checksum callback to veth driver
      net: ice: Add xmo_rx_checksum callback
      selftests/bpf: Add selftest support for bpf_xdp_metadata_rx_checksum
      selftests/bpf: Add bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog

 Documentation/netlink/specs/netdev.yaml            |   5 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c      | 118 +++++++++++++--------
 drivers/net/veth.c                                 |  29 +++++
 include/net/xdp.h                                  |  13 +++
 include/uapi/linux/netdev.h                        |   3 +
 net/core/xdp.c                                     |  28 +++++
 tools/include/uapi/linux/netdev.h                  |   3 +
 .../selftests/bpf/prog_tests/xdp_metadata.c        |   6 ++
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   8 ++
 tools/testing/selftests/bpf/progs/xdp_metadata.c   |   3 +
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |  25 +++++
 tools/testing/selftests/bpf/xdp_metadata.h         |  12 +++
 12 files changed, 211 insertions(+), 42 deletions(-)
---
base-commit: 192c0159402e6bfbe13de6f8379546943297783d
change-id: 20250925-bpf-xdp-meta-rxcksum-900685e2909d

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>

