Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C49FFeY32nXWQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:53:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB17D405077
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C97D942B1E;
	Wed, 15 Apr 2026 13:53:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mkyUyZ6v1NA1; Wed, 15 Apr 2026 13:53:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14E0342B1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776261203;
	bh=dVpNpxBkTcO/4l2fBBfiJeNf3RCFJaEWOpdd6iSc9NQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X4n/esLbSxW4qUiJdNXhSOcytSy98VNbfK7WGewM+qlEiKJ1ndlN8YD0/nLRmNg/S
	 mxe3GT1J5x0TqacA2kXfI6P1mS9QTM4y22K0tskoiAkbiu4OC6NFkCHOynZkaM0uZp
	 ou2X7jxnYilLBpB5QTbwGOqpkugQi53NqtvCiqkDkOrikXIQJ0xu9Ke1YfncOlduGj
	 9y71ubji7eXW8sMRIcsXpO3Q2wNurq/hqCSF/g2xgYiOLixuJFBOZ2L6706HJsvA8b
	 cz4t3/ADVYHq21q1A7F5VK/iK37XGDWoWUJ64eSw++iF48rXfVaj6IOZlkZzEU98OL
	 HdyEJ6rJ9p06g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14E0342B1F;
	Wed, 15 Apr 2026 13:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76B20237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CBBB853AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nLQ5Md66VEUK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 13:53:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB5A6853B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB5A6853B5
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB5A6853B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:53:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DEFED600AE;
 Wed, 15 Apr 2026 13:53:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 771BCC19424;
 Wed, 15 Apr 2026 13:53:17 +0000 (UTC)
Date: Wed, 15 Apr 2026 14:53:15 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Kiran Patil <kiran.patil@intel.com>
Message-ID: <20260415135315.GK772670@horms.kernel.org>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
 <20260413073035.4082204-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260413073035.4082204-6-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776261198;
 bh=RCRSadFhOAVPdCR4RHEUrMdSFUtCXm2C/VxKppUJ1dM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lR6N8cDOLY8BNji8pLn5aJnDiu0FUqYZcSoBwLclSgUQIKBUeCqG4+l8b9AVwSfxu
 VyF39jGBl3fkwI4E+zZ2dm1XLv3wU6+esDspW4Hbh7AmndYCWB7CmRVRbGGFzJ7Qs/
 OwBoPtaCLvAZDe3fcQLyX6KmXGyFNJtSDNSaAgwFmC6/QWCfLZmuHnk/LT4q3WFa8+
 9RXWt0CdYuUv45esrtyb4GQtqSZD2+dYW77PrWXrgIkBs6O6WaJZMOH9yXbl0164O+
 RhBy0NxeCzR/HoXCmCv9M+MFOJc2qc92Oc7Gu3G8LSc9m9dIMuqqpspk7OLLLMG8+p
 Apm0VmFgQMQvA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lR6N8cDO
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 5/5] iavf: return 0 when TC
 flower filter not found after qdisc teardown
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:kiran.patil@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB17D405077
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 09:30:35AM +0200, Aleksandr Loktionov wrote:
> From: Kiran Patil <kiran.patil@intel.com>
> 
> When an egress qdisc is destroyed, the driver proactively deletes all
> associated cloud filters to prevent stale hardware state, decrementing
> num_cloud_filters to zero in the process.
> 
> The kernel netdev layer is unaware of this implicit cleanup and may
> still try to delete the same filters individually. If the filter is
> not found in the driver's list and num_cloud_filters is already zero,
> return 0 instead of -EINVAL to avoid confusing upper layers that
> believe the filter is still offloaded in hardware.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

Sashiko has some comments on this function - which do not
seem related to the logic this patch touches.

I'd encourage you to take a look at some point as a follow-up activity.

...
