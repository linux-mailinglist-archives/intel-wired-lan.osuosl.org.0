Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC8C9B4C63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 15:44:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 845DB401CD;
	Tue, 29 Oct 2024 14:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uubYuhVg03n6; Tue, 29 Oct 2024 14:44:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B588040208
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730213049;
	bh=0c7KNis399VdnZBFgh040FMCOECS1I/z5+ZRYipp1Rc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hkjOVxVfrc6VtzIb6PAlfYXp4HfiGckeeTCq0IXUjlsAgxRWWfMFuDXqc6dsATMbn
	 Uf/+Esil7pYlkEpL2hTPxMdhIyGSSkVlW/tkq227rf5tTA6KbOZ89NZrB0Grpm0V0N
	 Oa873DgbXPotsnzfaJepAzz+Awb1OcVXnj/7QlwSjVOEg7qxP8Za4GdjZZMqE6A1vl
	 gPybzpcVFrxeUSuAOSxVtdjfUhivo+yYsMZmjAO8i9X72UwfC2tvq4bwmUIZ871DBb
	 qyPRaHBpzXJwsD9FfKdjhvaDBNsYjj3zYUFuF0AfHNKeCGm9HrCZqRibmNj7SRDIkq
	 k1RsNBBrMYmqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B588040208;
	Tue, 29 Oct 2024 14:44:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 28643AEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 14:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16D8E401D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 14:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SG8d7u0IeaNH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 14:44:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 42A4F401CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42A4F401CC
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42A4F401CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 14:44:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 78A1E5C2ADA;
 Tue, 29 Oct 2024 14:43:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A2ACC4CEE3;
 Tue, 29 Oct 2024 14:44:05 +0000 (UTC)
Date: Tue, 29 Oct 2024 07:44:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: <anthony.l.nguyen@intel.com>
Message-ID: <20241029074404.282e52b5@kernel.org>
In-Reply-To: <20241026041249.1267664-1-yuehaibing@huawei.com>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730213046;
 bh=0c7KNis399VdnZBFgh040FMCOECS1I/z5+ZRYipp1Rc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SDYMdEzK/af2sPGLyxSs55A2AlhVBQSNz83EvIMFRCfRf2kP78K8k4lQHHq1XsYmc
 6i0hsWzIPEMnLVvokVVknOYwfXK0w+YLemnOS8VmfdhKinKpBahxEk+DfUGIcyvwwN
 o4BmLSjmoIshfwOR1K4/e3/H1oD+ITszggidvHSNuo8dHxNamIa6IOCSFshSYn791t
 w0aLWhni8xT6ZHBaXpwFBq3XypKM2wRQxdDp6Day/cqCqufmJHkerzM38QP4CB+3AN
 6C16aVbHm3UWCwE3HvGTybZmv+uE9eplC8dRUB0e6ZmKgRsZny+cDmkkDiWSlSClWG
 6ZmYEqIHQCBxA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SDYMdEzK
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 0/4] Fix passing 0 to
 ERR_PTR in intel ether drivers
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com,
 john.fastabend@gmail.com, maciej.fijalkowski@intel.com, hawk@kernel.org,
 daniel@iogearbox.net, jithu.joseph@intel.com, przemyslaw.kitszel@intel.com,
 Yue Haibing <yuehaibing@huawei.com>, ast@kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, bpf@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 26 Oct 2024 12:12:45 +0800 Yue Haibing wrote:
> v4: Target to net-next

Nonetheless I'm going to assume Jake / Tony will take these.
LMK if we should apply directly.
