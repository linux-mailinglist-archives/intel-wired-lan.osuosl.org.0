Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WI+AH2w+emlB4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 17:50:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00EA636C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 17:50:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C851B408F1;
	Wed, 28 Jan 2026 16:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dg4QU4TPetUr; Wed, 28 Jan 2026 16:50:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02F34405E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769619040;
	bh=IqDSAu7laVueoLYvG13XkP9ttAtdGXv6i2DJMNCIq7c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Jfz/A+RlWsyR3u7lUJNcSqrDCf5uO3GrDYsEQ94U340fCwtTQwvS+fBRpvCdVEegv
	 xqiQkrMhmLZLnvvA9Ie+9A54fnYPtvTY9wrTdPE0vUoTRxa7qcj1SFZhdVvSaGzU+e
	 9HqXWs7RJE6sWbvCW9HX2QwDD6k3/z+uALX3B+vaE5z/3RQW8UoEEQHM9YtLxHGXFV
	 KajD/M9v5I2zvpGf4BJxsj10jLd4lY789mQv89/NM1PZHT9VEtW2nAxk0D87SwrJ3g
	 SDz+364nSsABmq0IpYNQsLNwGtFCTatLJ8MqRQVFivINM31u+e8DGvFKBZ8XNLPs1/
	 ebrg6E8OtHzPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02F34405E9;
	Wed, 28 Jan 2026 16:50:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C6CD31D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 16:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8D8460774
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 16:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I7qwiD74Wxwq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 16:50:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 358C760779
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 358C760779
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 358C760779
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 16:50:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C3DC960007;
 Wed, 28 Jan 2026 16:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 753F6C4CEF7;
 Wed, 28 Jan 2026 16:50:31 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vl8kO-0000000DAjS-2j79; Wed, 28 Jan 2026 17:50:28 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "David S. Miller" <davem@davemloft.net>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Stanislav Fomichev <sdf@fomichev.me>
Date: Wed, 28 Jan 2026 17:49:58 +0100
Message-ID: <cover.1769617841.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769619031;
 bh=UbNYriofE/WtsPUbSLmtYEzz8gqiNFUggra4R8CS2BA=;
 h=From:To:Cc:Subject:Date:From;
 b=Q/bdnRb0F86wJ7HS6Cyp6eWiPP3TJGKOgmFgxuJ65RsPq579vdhDYe+fVzfjLjpLR
 bQYW+sP2LP2epfwlQnKZ7Sp22sArGB4RfarEhMojtoVcVZuGNjjgTLoA1ymxA0r+to
 kP/2G5C4fu05NnC5O28IizXy4gZWEIwSO78HZr+ThT2dHlAa3PqE1WljduYbzBO8GD
 +2voYYHnYZuKawWPO5aq7HCXmKy1+8FAFsvpwkfsgF8nQeqJyhksIk+T2sAhkT2xfA
 zfiqrzk1X+y0tkaDhJWpouTEzvcLDNVYlsu0f/192Y0ZCnDptrESgdzA6VARMzTMBt
 c/PsNGftn3uNg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q/bdnRb0
Subject: [Intel-wired-lan] [PATCH v2 00/25] kernel-doc: make it parse new
 functions and structs
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[davemloft.net,intel.com,kernel.org,iogearbox.net,gmail.com,lwn.net];
	FORGED_RECIPIENTS(0.00)[m:davem@davemloft.net,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:kuba@kernel.org,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:corbet@lwn.net,m:mchehab@kernel.org,m:richardcochran@gmail.com,m:mchehab+huawei@kernel.org,m:bpf@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sdf@fomichev.me,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 4C00EA636C
X-Rspamd-Action: no action

Hi Jon,

It is impressive how a single patch became a series with 25 ones ;-)

This version was rebased on next-20260127, which is after docs-mw
got merged with my doc patches, solving some merge conflicts.

It should now apply cleanly on the top of upstream and it will address
the kernel-doc issues with context analysis patches that are already
at linux-next.

On this version, I opted to do something I always wanted when
porting from the venerable kernel-doc perl logic: properly handle
macros without writing really complex regular expressions.

After those changes, the replacement logic becomes a lot more
easier to write, as we can have a cleaner logic to handle
function calls:

	function_xforms = [
	    (KernRe(r"^static +"), ""),
	    (KernRe(r"^extern +"), ""),
	...
	    (NestedMatch(r"__cond_acquires\s*\("), ""),
	    (NestedMatch(r"__cond_releases\s*\("), ""),
	...
	}

It can even be used to replace comma-separated arguments like here:

	struct_xforms = [
	...
	    (NestedMatch(r'\bstruct_group\s*\('), r'\2'),
	    (NestedMatch(r'\bstruct_group_attr\s*\('), r'\3'),
	    (NestedMatch(r'\bstruct_group_tagged\s*\('), r'struct \1 { \3 } \2;'),
	    (NestedMatch(r'\b__struct_group\s*\('), r'\4'),
	...
	]

As both KernRe and NestedMatch have sub methods, they can be placed
altogether at the same transforms tables.

The regex syntax for them are quite simple: they should end with a
delimiter (usually open parenthesis, but brackets and square
brackets are also supported).

The first 15 patches on this series were co-developed with Randy,
with came up with the original patch. I ended helping identifying
kernel-doc issues and doing some changes to make the parser more
reliable.

Then, I added 10 other patches to improve NestedMatch.

The final two patches on it fixes an issue when parsing
include/net/page_pool/types.h. Right now, it doesn't parse
well struct page_pool_params, as the second struct_group_tagged()
has a /* private */ on it, causing the end parenthesis to be
commented out. After the series, the documentation for it
should be ok.

-

Even NestedMatch being more complex than KernRe, on my machine,
parsing all files is 5% faster than before, because we're not
parsing anymore macro definitions.

Ah, due to the complexity of NestedMatch, I opted to write
some unit tests to verify that the logic there is correct.
We can use it to add other border cases.

Using it is as easy as running:

	$ tools/unittests/nested_match.py

(I opted to create a separate directory for it, as this
is not really documentation)

Mauro Carvalho Chehab (23):
  docs: kdoc_re: add support for groups()
  docs: kdoc_re: don't go past the end of a line
  docs: kdoc_parser: move var transformers to the beginning
  docs: kdoc_parser: don't mangle with function defines
  docs: kdoc_parser: add functions support for NestedMatch
  docs: kdoc_parser: use NestedMatch to handle __attribute__ on
    functions
  docs: kdoc_parser: fix variable regexes to work with size_t
  docs: kdoc_parser: fix the default_value logic for variables
  docs: kdoc_parser: add some debug for variable parsing
  docs: kdoc_parser: don't exclude defaults from prototype
  docs: kdoc_parser: fix parser to support multi-word types
  docs: kdoc_parser: add support for LIST_HEAD
  docs: kdoc_re: properly handle strings and escape chars on it
  docs: kdoc_re: better show KernRe() at documentation
  docs: kdoc_re: don't recompile NextMatch regex every time
  docs: kdoc_re: Change NestedMath args replacement to \0
  docs: kdoc_re: make NextedMatch use KernRe
  tools: kdoc_re: add support on NestedMatch for argument replacement
  tools: python: add helpers to run unit tests
  unittests: add tests for NestedMatch class
  tools/lib/python/unittest_helper.py
  docs: kdoc_parser: better handle struct_group macros
  docs: kdoc_re: fix a parse bug on struct page_pool_params

Randy Dunlap (2):
  docs: kdoc_parser: ignore context analysis and lock attributes
  kdoc_parser: handle struct member macro VIRTIO_DECLARE_FEATURES(name)

 tools/lib/python/kdoc/kdoc_parser.py | 109 +++--
 tools/lib/python/kdoc/kdoc_re.py     | 154 +++++--
 tools/lib/python/unittest_helper.py  | 279 +++++++++++++
 tools/unittests/nested_match.py      | 589 +++++++++++++++++++++++++++
 4 files changed, 1063 insertions(+), 68 deletions(-)
 create mode 100755 tools/lib/python/unittest_helper.py
 create mode 100755 tools/unittests/nested_match.py

-- 
2.52.0

