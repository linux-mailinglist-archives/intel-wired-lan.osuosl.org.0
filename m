Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CU5QBR1NGmp72wgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 May 2026 04:36:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6324260AF61
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 May 2026 04:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67E664080D;
	Sat, 30 May 2026 02:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wk8rfMs1O7Wv; Sat, 30 May 2026 02:36:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E03F040793
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780108567;
	bh=6EtOHmDddUVoeNMRlEOQToO3DJiZi1UJI7Jp56tA3Us=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YkjgQEp3OCLXBCagifXvNcebxilhsjN/ZHUIwe3NlUWrPeUbSu+7fWYmFoNPsMrX3
	 Bie2BA4CcaPAAVJoEekJah3ZHJuwHaqX0frDnPHCMKrWfN+QRsc/pYOwWwLAqdiVlY
	 lrYiMct4SfZqnqyGQ9U1qlmFIUTMpCOp/AKkjjDw+DFdJw3IwjTnMotn1o4xZrcxFS
	 TTuu0oCN5j9pP2s62esOuFEGbJXiAwF4qqdO29S7c2cjlTWfQq54PT3e7V+CpJnJfe
	 sYS/921r87wXkVhqYgIW73G3ZAWDLPrZ89Oc+CN83fq/4bnH+uWn9xPjlLcLrZpa/n
	 5wgdXdt6uNz/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E03F040793;
	Sat, 30 May 2026 02:36:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CB89F4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 May 2026 02:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D22184DFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 May 2026 02:36:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKxaL-tLf09B for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 May 2026 02:36:05 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 30 May 2026 02:36:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BA01F85024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA01F85024
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.224.81.18;
 helo=mail-m8118.xmail.ntesmail.com; envelope-from=dawei.feng@seu.edu.cn;
 receiver=<UNKNOWN> 
Received: from mail-m8118.xmail.ntesmail.com (mail-m8118.xmail.ntesmail.com
 [156.224.81.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA01F85024
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 May 2026 02:36:03 +0000 (UTC)
Received: from DESKTOP-SUEFNF9.taila7e912.ts.net (unknown [58.241.16.34])
 by smtp.qiye.163.com (Hmail) with ESMTP id 4065854d3;
 Sat, 30 May 2026 10:30:52 +0800 (GMT+08:00)
From: Dawei Feng <dawei.feng@seu.edu.cn>
To: sln@onemain.com
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn
Date: Sat, 30 May 2026 10:30:52 +0800
Message-Id: <20260530023052.3103391-1-dawei.feng@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <eb74ae1c-3027-42f5-ad5b-a6f2c2cd6a98@onemain.com>
References: <eb74ae1c-3027-42f5-ad5b-a6f2c2cd6a98@onemain.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e76b8544803a2kunm626b9a03e4269
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTh5KVhkdGU1OSxgZHxhPSVYeHw
 5VEwETFhoSFyQUDg9ZV1kYEgtZQVlOQ1VJT0pVSk1VSE9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhOQ0
 NVSktLVUtZBg++
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=B0RajA/Fl21y/fjBemzDmqxVeaQjCDMK/sM0r0gtGjmI6+FOOmpaV6uasxRqNsTxw3K0OeWHHn037zojWMQ9A88QoidRQzMTIkdmyYeSW3a57lX7UjydWWggJpgkBapojShpXasFslUpZOQ61o6mBLGddyRnFSxaMtJZ5SVHrV0=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=6EtOHmDddUVoeNMRlEOQToO3DJiZi1UJI7Jp56tA3Us=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=B0RajA/F
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
 i40e_vsi_setup() error paths
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[seu.edu.cn : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sln@onemain.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jesse.brandeburg@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6324260AF61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 1:57 AM, Shannon Nelson wrote:
> 
> >>   err_netdev:
> >> +	if (vsi->netdev) {
> >> +		free_netdev(vsi->netdev);
> >> +		vsi->netdev = NULL;
> >> +	}
> >>   	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
> 
> Would it make sense to put these 4 lines into i40e_vsi_clear()? Then you 
> can also clean up i40e_vsi_release() and i40e_vsi_reinit_setup() in a 
> similar way.
> 
> sln

Hi sln,

Thanks for the suggestion. I will adjust this part in the upcoming v2.

Best regards,
Dawei
