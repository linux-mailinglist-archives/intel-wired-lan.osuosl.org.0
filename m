Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DPsNPUQfmkqVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC01C253D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F58B40A9B;
	Sat, 31 Jan 2026 14:25:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E0MAc81o6Wtu; Sat, 31 Jan 2026 14:25:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 771BF40BF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869551;
	bh=5s82xQm4tb10Ohy8/G/8lNaZDocILp147qF+IhsU+Qg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JMKAikqEVz6pX+pm/brpAJPnKM/nwzKP3MLfYC5OFQQgqZJ3GYrkkeo5nc5Xb60Fc
	 xsudsCoKfyU7thweSSIIVB8vPWMqNuRg61861eAKsBEYJj1/h2yfJM1omd3uiDgCv2
	 Iz8dRLbMt/59s6msU4qBCgAi1ELXZkFOWXQLbUI5a7dwEGwQSQhtDbAvFgvEw1eptN
	 /mOA7IeiOYAQHTqb47GOHuCoPlbjfpYzPLHh6+OkpsyupUJaWHj9wppDhKDJlAE8ls
	 8dK0pXEVDpd5i22mxXZ4JnTtlX/F26u/vPDhaWChF8jf0mHOyjFD6lWI9Q01/W2J5J
	 mvplVzl/oCRiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 771BF40BF3;
	Sat, 31 Jan 2026 14:25:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EFA81E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9BEB60B57
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FLEfx57ggn5n for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A072C60B4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A072C60B4E
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A072C60B4E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4322360130;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0B3C2BCB3;
 Sat, 31 Jan 2026 14:25:21 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBuZ-0000000AVjl-1EAr; Sat, 31 Jan 2026 15:25:19 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, Kees Cook <kees@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Sat, 31 Jan 2026 15:24:34 +0100
Message-ID: <cover.1769867953.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869521;
 bh=GQxQSIJ9zVioMxXOuLm+2OSq66234rnFskvJugtkkiE=;
 h=From:To:Cc:Subject:Date:From;
 b=ZtBiOkliM1tjI/dshe2DJ87tkxKsNQsJeXpHs8bUPcsxuZkIImeIyj/oImKn3dIO6
 mvbJcCvzjM6rbgMJQRIjNqswn7r+IAaTLy9XbeV7aPlMmSCrcNfKV2ZJgDjRFiUMkO
 UIwvNOGftYnoLX2HDlPe6voh1rOeSphwEnb9ZfOJ9eQ5fsQXQDLX7bIa9hfrZKKfYV
 i6UYuBr5d22/k2GtAkeHVuyRe6GBl7kUhlwSxsx+xepH9Mrhb0FiqqpI7noh8w/rM0
 404IwE5Rqy/HvRbsOdRS6fMU6mzT7fV7K02g8RG5RwwPwn/ENHUbra0rlOo6fRnD7l
 NloskcjdjEvNQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZtBiOkli
Subject: [Intel-wired-lan] [PATCH v4 00/41] kernel-doc: make it parse new
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:corbet@lwn.net,m:kees@kernel.org,m:mchehab@kernel.org,m:mchehab+huawei@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6DC01C253D
X-Rspamd-Action: no action

Hi Jon,

Rebased the changes on the top of docs-mw, and merged
the /4 patch series with fixes from me that ws pending
and contained a conflicting patch with this series.

Oh well, it means that this one increased its size
again...

The initial goal were to address some new warnings
at linux next due to some new macro annotations.

As the previous version, this one contains a new
CFunction class, with is just an alias for "NestedMatch",
meant to make easier to maintain transforms, which are
now on a separate file:

    tools/lib/python/kdoc/xforms_lists.py

With that, transform lists now use CFunction for macros
with a function prototype, using KernRe only the
remaining macros and part of the declarations we want to
strip (like extern).

So, for instance, the entire transform list for structs
is now:

    #: Transforms for structs and unions
    struct_xforms = [
        (CFunction("__attribute__"), ' '),
        (CFunction('__aligned'), ' '),
        (CFunction('__counted_by'), ' '),
        (CFunction('__counted_by_(le|be)'), ' '),
        (CFunction('__guarded_by'), ' '),
        (CFunction('__pt_guarded_by'), ' '),

        (KernRe(r'\s*__packed\s*', re.S), ' '),
        (KernRe(r'\s*CRYPTO_MINALIGN_ATTR', re.S), ' '),
        (KernRe(r'\s*__private', re.S), ' '),
        (KernRe(r'\s*__rcu', re.S), ' '),
        (KernRe(r'\s*____cacheline_aligned_in_smp', re.S), ' '),
        (KernRe(r'\s*____cacheline_aligned', re.S), ' '),

        (CFunction('__cacheline_group_(begin|end)'), ''),

        (CFunction('struct_group'), r'\2'),
        (CFunction('struct_group_attr'), r'\3'),
        (CFunction('struct_group_tagged'), r'struct \1 \2; \3'),
        (CFunction('__struct_group'), r'\4'),

        (CFunction('__ETHTOOL_DECLARE_LINK_MODE_MASK'), r'DECLARE_BITMAP(\1, __ETHTOOL_LINK_MODE_MASK_NBITS)'),
        (CFunction('DECLARE_PHY_INTERFACE_MASK',), r'DECLARE_BITMAP(\1, PHY_INTERFACE_MODE_MAX)'),
        (CFunction('DECLARE_BITMAP'), r'unsigned long \1[BITS_TO_LONGS(\2)]'),

        (CFunction('DECLARE_HASHTABLE'), r'unsigned long \1[1 << ((\2) - 1)]'),
        (CFunction('DECLARE_KFIFO'), r'\2 *\1'),
        (CFunction('DECLARE_KFIFO_PTR'), r'\2 *\1'),
        (CFunction('(?:__)?DECLARE_FLEX_ARRAY'), r'\1 \2[]'),
        (CFunction('DEFINE_DMA_UNMAP_ADDR'), r'dma_addr_t \1'),
        (CFunction('DEFINE_DMA_UNMAP_LEN'), r'__u32 \1'),
        (CFunction('VIRTIO_DECLARE_FEATURES'), r'union { u64 \1; u64 \1_array[VIRTIO_FEATURES_U64S]; }'),
    ]

As KernRe, CFunction and NestedMatch have a ".sub" method, a
single transforms table can have them all.

Due to the complexity of NestedMatch, I opted to write
unit tests to verify that the logic there is correct.

On this version, the module was almost entirely re-written
by hand, and the test suite has now 3 groups:

- TestDifferentReplacements: basic tests using several
  tests to try checkin border cases with NestedMatch.sub.
  They all use a single macro name;
- TestMultipleMacros: test different macros and conditions,
  also trying to get border cases;
- TestRealUsecases: as the name says, on this one I picked
  real test cases. I used an example given by Randy on
  some of them and placed a testset to try covering
  struct_group macros, which are quite complex.

Using it is as easy as running:

	$ tools/unittests/kdoc_xforms.py

And, if something goes wrong, -v will show the problem in unified diff[1]:

    $ tools/unittests/kdoc_xforms.py -k test_functions_with_acquires_and_releases -v

    test_functions_with_acquires_and_releases (kdoc_xforms.TestRealUsecases.test_functions_with_acquires_and_releases)
    Test guarded_by on vars from lib/stackdepot.c. ... FAIL
    
    ======================================================================
    FAIL: test_functions_with_acquires_and_releases (kdoc_xforms.TestRealUsecases.test_functions_with_acquires_and_releases)
    Test guarded_by on vars from lib/stackdepot.c.
    ----------------------------------------------------------------------
    Traceback (most recent call last):
      File "/new_devel/docs/tools/unittests/kdoc_xforms.py", line 649, in test_functions_with_acquires_and_releases
        self.assertLogicallyEqual(result, expected)
        ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
      File "/new_devel/docs/tools/unittests/kdoc_xforms.py", line 56, in assertLogicallyEqual
        self.assertEqual(a, b)
        ~~~~~~~~~~~~~~~~^^^^^^
    AssertionError: 'bool[477 chars]\n\n acpi_cpu_flags acpi_os_acquire_lock(acpi_[90 chars]sed)' != 'bool[477 chars]\n\n /* THIS IS UNEXPECTED. TEST WILL FAIL HER[140 chars]sed)'
      bool prepare_report_consumer(unsigned long *flags,
       const struct access_info *ai,
       struct other_info *other_info);
      
       int tcp_sigpool_start(unsigned int id, struct tcp_sigpool *c);
      
       bool undo_report_consumer(unsigned long *flags,
       const struct access_info *ai,
       struct other_info *other_info);
      
       void debugfs_enter_cancellation(struct file *file,
       struct debugfs_cancellation *c);
      
       void debugfs_leave_cancellation(struct file *file,
       struct debugfs_cancellation *c);
      
    +  /* THIS IS UNEXPECTED. TEST WILL FAIL HERE */
    + 
       acpi_cpu_flags acpi_os_acquire_lock(acpi_spinlock lockp);
      
       void acpi_os_release_lock(acpi_spinlock lockp,
       acpi_cpu_flags not_used)
    
    
    ----------------------------------------------------------------------
    Ran 1 test in 0.001s
    
    FAILED (failures=1)

[1] This error was caused when I applied this patch:

    --- a/tools/unittests/kdoc_xforms.py
    +++ b/tools/unittests/kdoc_xforms.py
    @@ -637,6 +637,8 @@ class TestRealUsecases(TestCaseDiff):
                 void debugfs_leave_cancellation(struct file *file,
                                                 struct debugfs_cancellation *c);
 
    +            /* THIS IS UNEXPECTED. TEST WILL FAIL HERE */
    +
                 acpi_cpu_flags acpi_os_acquire_lock(acpi_spinlock lockp);
 
                 void acpi_os_release_lock(acpi_spinlock lockp,



---
v4:
- minor cleanups at the description on the first 30 patches;
- picked paches from this series:
    https://lore.kernel.org/linux-doc/cover.1769500383.git.mchehab+huawei@kernel.org/
- added patches to make easier for kernel-doc to be used on
  other projects (QEMU currently uses it)
- did some extra fixes at NestedMatch for some corner cases;
- added patches to improve man pages output;
- unittests were revamped.

v3:
- improved the unittest helper to allow adding in the future
  a runner to create a test suite directly;
- added unittest to tools/python library documentation;
- improved comments at the new modules;
- did several cleanups at the new logic;
- added a fix for NestedMatch not remove ";" at the end,
  mimicing the behavior of KernRe;
- moved transforms to a separate module;
- replaced all regexes to parse macros with the new CFunction
  alias for NestedMatch.

v2:
- added 10 new patches adding support at NestedMatch
  to properly group and replace arguments with \1, \2, ...

Mauro Carvalho Chehab (39):
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
  docs: kdoc_re: don't recompile NestedMatch regex every time
  docs: kdoc_re: Change NestedMath args replacement to \0
  docs: kdoc_re: make NestedMatch use KernRe
  docs: kdoc_re: add support on NestedMatch for argument replacement
  docs: kdoc_parser: better handle struct_group macros
  docs: kdoc_re: fix a parse bug on struct page_pool_params
  docs: kdoc_re: add a helper class to declare C function matches
  docs: kdoc_parser: use the new CFunction class
  docs: kdoc_parser: minimize differences with struct_group_tagged
  docs: kdoc_parser: move transform lists to a separate file
  docs: kdoc_re: don't remove the trailing ";" with NestedMatch
  docs: kdoc_re: prevent adding whitespaces on sub replacements
  docs: xforms_lists.py: use CFuntion to handle all function macros
  docs: kdoc_files: allows the caller to use a different xforms class
  docs: kdoc_re: Fix NestedMatch.sub() which causes PDF builds to break
  docs: sphinx-build-wrapper: allow -v override -q
  tools: sphinx-build-wrapper: improve its help message
  docs: kdoc_files: document KernelFiles() ABI
  docs: kdoc_output: add optional args to ManOutput class
  docs: sphinx-build-wrapper: better handle troff .TH markups
  docs: kdoc_output: use a more standard order for .TH on man pages
  docs: kdoc_output: describe the class init parameters
  docs: kdoc_output: pick a better default for modulename
  docs: python: add helpers to run unit tests
  tools: unittests: add tests for kernel-doc NestedMatch and KernRe

Randy Dunlap (2):
  docs: kdoc_parser: ignore context analysis and lock attributes
  docs: kdoc_parser: handle struct member macro
    VIRTIO_DECLARE_FEATURES(name)

 Documentation/tools/kdoc_parser.rst   |   8 +
 Documentation/tools/python.rst        |   2 +
 Documentation/tools/unittest.rst      |  24 +
 tools/docs/kernel-doc                 |   1 -
 tools/docs/sphinx-build-wrapper       |  50 +-
 tools/lib/python/kdoc/kdoc_files.py   |  54 ++-
 tools/lib/python/kdoc/kdoc_output.py  |  73 ++-
 tools/lib/python/kdoc/kdoc_parser.py  | 182 ++-----
 tools/lib/python/kdoc/kdoc_re.py      | 242 +++++++---
 tools/lib/python/kdoc/xforms_lists.py | 108 +++++
 tools/lib/python/unittest_helper.py   | 348 ++++++++++++++
 tools/unittests/kdoc_xforms.py        | 654 ++++++++++++++++++++++++++
 12 files changed, 1515 insertions(+), 231 deletions(-)
 create mode 100644 Documentation/tools/unittest.rst
 create mode 100644 tools/lib/python/kdoc/xforms_lists.py
 create mode 100755 tools/lib/python/unittest_helper.py
 create mode 100755 tools/unittests/kdoc_xforms.py

-- 
2.52.0

