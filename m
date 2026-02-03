Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDAzDzLMgWl1JwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 11:21:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E49D783C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 11:21:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A651823DD;
	Tue,  3 Feb 2026 10:21:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bWlqOFGMBlxd; Tue,  3 Feb 2026 10:21:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8C0482389
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770114095;
	bh=TblGRIK+EVqQkPbymIqDvw5SKo5IqX4mHjR+G3bgeLc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dHcurqs7OWJHGNOx9nhp6Zol13Ac5+mQ880BY3kCBlV8aKvROE6kqfpMqpATEqqc3
	 DV6Z4jfRhwKcpnpsGsofs5J6psZu3iJ95U7PBJwnqrOriQJJMF9Bl69T1XObJe8oDA
	 nqNnKEO6/nqpu1TttPK6yi1b0naXXDRRTqqwGZWA36FvmJoWnh4QSLb/eeMVCaWyfX
	 M2UnWmkqccuzuLRXRKw4aFsJPI8D/e4g2rdtR7NeOMv5CcB9DropviY8Syw7OPo9w0
	 6STam7sHcXcTYU5QrtFgc8ntwwr35rIfUQ6nR52H6aS8RQcuPJsqjiUW9Wp99kANao
	 4DP1SWNU+GTNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8C0482389;
	Tue,  3 Feb 2026 10:21:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 42646F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C6244043A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:21:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JD2Jx0CDCyws for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 10:21:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1986D40562
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1986D40562
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1986D40562
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:21:32 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-318-kB-9cYPYMlGiKlMTHqtflw-1; Tue,
 03 Feb 2026 05:21:26 -0500
X-MC-Unique: kB-9cYPYMlGiKlMTHqtflw-1
X-Mimecast-MFC-AGG-ID: kB-9cYPYMlGiKlMTHqtflw_1770114083
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 01CE7195605F; Tue,  3 Feb 2026 10:21:23 +0000 (UTC)
Received: from [10.43.3.114] (unknown [10.43.3.114])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8883619560B2; Tue,  3 Feb 2026 10:21:17 +0000 (UTC)
Message-ID: <67478aa2-54f5-4a3f-8063-ab6e877693e4@redhat.com>
Date: Tue, 3 Feb 2026 11:21:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: kernel test robot <lkp@intel.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>
References: <20260202171638.17427-8-ivecera@redhat.com>
 <202602030538.6ok1xugA-lkp@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <202602030538.6ok1xugA-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770114091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TblGRIK+EVqQkPbymIqDvw5SKo5IqX4mHjR+G3bgeLc=;
 b=ia1qoDPCTze9Boyb6Luxbrsl8AHbkLeTKTCfF6bah8CwTZ2lRBPEwYzYCjgAiHFFzx2XaX
 H/5ECQq6udwYXWeSokFHCmIdGFzXRb5hlrwNQEuQ1HPLLY6LIzIXdDtAmBW1VV0kEXIA2t
 2SUBkxkDv8CwEGVQjIE2DnPHCUJgG/k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ia1qoDPC
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 7/9] dpll: Add reference
 count tracking support
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lkp@intel.com,m:netdev@vger.kernel.org,m:oe-kbuild-all@lists.linux.dev,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:leon@kernel.org,m:aleksander.lobakin@intel.com,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:jonathan.lemon@gmail.com,m:saeedm@nvidia.com,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,google.com,intel.com,kernel.org,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: B9E49D783C
X-Rspamd-Action: no action



On 2/2/26 10:48 PM, kernel test robot wrote:
> Hi Ivan,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on net-next/main]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/dpll-Allow-associating-dpll-pin-with-a-firmware-node/20260203-012705
> base:   net-next/main
> patch link:    https://lore.kernel.org/r/20260202171638.17427-8-ivecera%40redhat.com
> patch subject: [Intel-wired-lan] [PATCH net-next v4 7/9] dpll: Add reference count tracking support
> config: i386-randconfig-141-20260203 (https://download.01.org/0day-ci/archive/20260203/202602030538.6ok1xugA-lkp@intel.com/config)
> compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
> smatch version: v0.5.0-8994-gd50c5a4c
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260203/202602030538.6ok1xugA-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202602030538.6ok1xugA-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
>     In file included from net/core/rtnetlink.c:61:
>>> include/linux/dpll.h:235:1: error: expected identifier or '('
>       235 | {
>           | ^
>     1 error generated.
> 
> 
> vim +235 include/linux/dpll.h
> 
> 877c40367bc8a7 Ivan Vecera 2026-02-02  232
> 877c40367bc8a7 Ivan Vecera 2026-02-02  233  static inline struct dpll_pin *
> bed78c2008cb37 Ivan Vecera 2026-02-02  234  fwnode_dpll_pin_find(struct fwnode_handle *fwnode, dpll_tracker *tracker);

Oh god, extra semicolon in this stub :-(

Will submit the fix after 24h grace period.

I.
> 877c40367bc8a7 Ivan Vecera 2026-02-02 @235  {
> 877c40367bc8a7 Ivan Vecera 2026-02-02  236  	return NULL;
> 877c40367bc8a7 Ivan Vecera 2026-02-02  237  }
> 5f18426928800c Jiri Pirko  2023-09-13  238  #endif
> 5f18426928800c Jiri Pirko  2023-09-13  239



