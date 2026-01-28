Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CArEC7xEemn34wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:17:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6D4A6B3A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA687408CA;
	Wed, 28 Jan 2026 17:17:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fm0MA0IihFVn; Wed, 28 Jan 2026 17:17:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69571408D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769620665;
	bh=usJ4hfiLq/OzVdJQGSalL6MN5RB6WgsLMuw1inAjLT0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6eMv+oZq47igambnhjOkCAm5zxWoEyJaIBAI+1BiUBJhLjevOB/Jz89UYB3yUWzS3
	 VhmWZuBswkLbvtpG010qw5v/+A+YfoDWIGS2wvN7h/eJUMeeaXbscXhReBeCp5H/U3
	 doRQWqephAX+ptOCKMFwbvOWpMrXjcgrLjbW3miIfC3UCGi0onexn9upabjhYwR160
	 WF/PjfnEhfQP/tjC36QlNUfHdgzpcOD8NjAsBdAMoDnkPM3dqDyB3km0BpT0VDUo/2
	 Zc7onT2b0AtcENJHnjzk01psizmf/Y0ONHQzHVkSz2T2IKc9lb269Uj5rd31bhGmpc
	 Gmle0mhoA4m4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69571408D0;
	Wed, 28 Jan 2026 17:17:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2593D1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:17:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0949E408CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:17:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2nsZWCihrZYO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:17:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F460408BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F460408BA
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F460408BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:17:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C770A43BEE;
 Wed, 28 Jan 2026 17:17:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C852DC4CEF7;
 Wed, 28 Jan 2026 17:17:38 +0000 (UTC)
Date: Wed, 28 Jan 2026 18:17:35 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>, Linux Doc Mailing List
 <linux-doc@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20260128181735.32201f69@foz.lan>
In-Reply-To: <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769620662;
 bh=ANTjixZkXhjfEXZHVJOVnZ6wtyrPwuI6BH+sQY3XRDY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Jfz/d2EPfEfEFSwxM75CsatguEfliiHE/4PaQGlLTfUwy1Uh9eZrb98Taq97Qv/jP
 cJBvDa5uSiq7rM1YMawbMbu53LfmyMcTN+iugV/ld829vY17c1pACLKs8vRPawUqSm
 rQb/Vm3wb50pO8F/JtHBocxmTEMdHoOdt/mAAMoNra0bR5azYbhYLmt+zbYNIF0p7C
 gdbavaoLYW0d2mp1G0ZuTtBPJQ7FV/cbo9v8Mjfrsd+lbATvxsTUi4tcLmCDPDh2UE
 6zWY+7g/lOoDyMJ+AISad5F63MsZKGXH7akyw8BAjjAfICsrMq9oc3Xi8irMVQuKPO
 1H2F1jeB+OcHw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Jfz/d2EP
Subject: Re: [Intel-wired-lan] [PATCH v2 23/25]
 tools/lib/python/unittest_helper.py
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,foz.lan:mid];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab@kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sfr@canb.auug.org.au,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9A6D4A6B3A
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 17:50:21 +0100
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

This is obviously wrong... it should have been merged with patch 21, after
a cleanup I did on it to remove some dead code.

> ---
>  tools/lib/python/unittest_helper.py | 16 +---------------
>  1 file changed, 1 insertion(+), 15 deletions(-)
> 
> diff --git a/tools/lib/python/unittest_helper.py b/tools/lib/python/unittest_helper.py
> index e438472fa704..3cf1075b1de4 100755
> --- a/tools/lib/python/unittest_helper.py
> +++ b/tools/lib/python/unittest_helper.py
> @@ -8,21 +8,7 @@
>  Helper class to better display unittest results.
>  
>  Those help functions provide a nice colored output summary of each
> -executed test and, when a test fails, it shows the different in diff
> -format when running in verbose mode, like::
> -
> -    $ tools/unittests/nested_match.py -v
> -    ...
> -    Traceback (most recent call last):
> -    File "/new_devel/docs/tools/unittests/nested_match.py", line 69, in test_count_limit
> -        self.assertEqual(replaced, "bar(a); bar(b); foo(c)")
> -        ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> -    AssertionError: 'bar(a) foo(b); foo(c)' != 'bar(a); bar(b); foo(c)'
> -    - bar(a) foo(b); foo(c)
> -    ?       ^^^^
> -    + bar(a); bar(b); foo(c)
> -    ?       ^^^^^
> -    ...
> +executed test.
>  
>  It also allows filtering what tests will be executed via ``-k`` parameter.
>  



Thanks,
Mauro
