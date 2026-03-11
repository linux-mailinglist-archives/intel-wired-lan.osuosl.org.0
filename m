Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DUzEkd2sWnovQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 15:03:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B18FE26501E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 15:03:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE75A42263;
	Wed, 11 Mar 2026 14:03:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mw1NkR_zweFf; Wed, 11 Mar 2026 14:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 513B1422C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773237828;
	bh=GkAgNZHJ9JPdfVojz2Uvbc0Bs1V/TN/9xj0aLCnFPcE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NqqiyoEh8hLgrWc1fQeGzzPmlJLanHyaQHsQuBoycvWwkfi1+oVIjo/9k5xpCp4f+
	 JH7lSpzXnJrRgH5IbjMne9oHbWAx/iPifJGYgNemvM2NdzKLhQc40+JvN76YrRSMYX
	 AkiuSK7LKQKFxkxahYgQQtPVsi6HhLMGdZpQxPymCPlsrRTJgPgShzvUHoJOxuA0qn
	 wXHcHyU9tdSFKUUsCBjc/kQvQVbCSLkumnvtDWh64oicgzHwVhqbn+rXMqM9fL/mrI
	 /NRpZKtix9YjSrrP97N/OXTNPQaGN/TD77vpKfzGuKPIZXT6UJSngqA4LxgW6OinE/
	 N/ARkTQggCyqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 513B1422C9;
	Wed, 11 Mar 2026 14:03:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AB39F33A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 14:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D6FC616AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 14:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nSl5-m3TUtYs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 14:03:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=216.40.44.14;
 helo=relay.hostedemail.com; envelope-from=rostedt@goodmis.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7311F616AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7311F616AD
Received: from relay.hostedemail.com (smtprelay0014.hostedemail.com
 [216.40.44.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7311F616AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 14:03:44 +0000 (UTC)
Received: from omf20.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay02.hostedemail.com (Postfix) with ESMTP id 4324D139CEA;
 Wed, 11 Mar 2026 14:03:38 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by
 omf20.hostedemail.com (Postfix) with ESMTPA id 0CF3220025; 
 Wed, 11 Mar 2026 14:03:20 +0000 (UTC)
Date: Wed, 11 Mar 2026 10:03:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Masami Hiramatsu (Google)" <mhiramat@kernel.org>
Cc: Philipp Hahn <phahn-oss@avm.de>, amd-gfx@lists.freedesktop.org,
 apparmor@lists.ubuntu.com, bpf@vger.kernel.org, ceph-devel@vger.kernel.org,
 cocci@inria.fr, dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>
Message-ID: <20260311100332.6a2ce4b1@gandalf.local.home>
In-Reply-To: <20260311141332.b611237d36b61b2409e66cb3@kernel.org>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-15-bd63b656022d@avm.de>
 <20260310100750.303af303@gandalf.local.home>
 <20260311141332.b611237d36b61b2409e66cb3@kernel.org>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: ff8ct3tumfmuryqygkfkcm78w16u4scc
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+skqrXXDxm4il2tsYmj25H0/GTzSRdMUI=
X-HE-Tag: 1773237800-364001
X-HE-Meta: U2FsdGVkX1+aU4mY7bFvO8lRauP/vgjT20dobHa0QHVROVhTP6xZNvlHFy+HnthX7C3DUw86Ksayk8kipkioUde1pGRJffeDzlmGTmiRQAtxOhSsM3gHnZJQZGdgNXBABYZdeE7OsMEvCI5Ff4ZQbbyu3yXHRyZXg5AHof/AO0vcusmeqjpCWWhtLLOcuZIY7+tOVjT7VktVnLaFPp1jjRLc3JQ2sJ4jp/SiL4aHgDK/k//b9d34oAYT+AlJT32Fm0BFv3eObF3U3OAnj7CnGXu0MyQ+0edSgYKqKIiOybnUsF1fYSODF4X+zk3bqwV4HOqJnRMkZevrGktYEsiiqb8/qNY0d6MZ
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=goodmis.org
Subject: Re: [Intel-wired-lan] [PATCH 15/61] trace: Prefer IS_ERR_OR_NULL
 over manual NULL check
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
X-Rspamd-Queue-Id: B18FE26501E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[goodmis.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mhiramat@kernel.org,m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux
 -phy@lists.infradead.org,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:mathieu.desnoyers@efficios.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[rostedt@goodmis.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, 11 Mar 2026 14:13:32 +0900
Masami Hiramatsu (Google) <mhiramat@kernel.org> wrote:

> Hmm, now IS_ERR_OR_NULL() is an inline function, so it is safe.
> But if you want to use IS_ERR_OR_NULL() here, it will be better something like
> 
> node = rhashtable_walk_next(&iter);
> while (!IS_ERR_OR_NULL(node)) {
> 	fprobe_remove_node_in_module(mod, node, &alist);
> 	node = rhashtable_walk_next(&iter);
> }

But now you need to have a duplicate code in order to acquire "node"

I think the patch just makes the code worse.

-- Steve
