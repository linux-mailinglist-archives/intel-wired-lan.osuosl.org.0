Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBk7CdSLcGkEYQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 09:18:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFBE5360F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 09:18:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E77ED61044;
	Wed, 21 Jan 2026 08:18:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hfENBo1QxJzj; Wed, 21 Jan 2026 08:18:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF66D60F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768983504;
	bh=aLjuYxOngZSy7JCsu6Pfdx7HjhY/QhYRMKePJQYZ+kE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E47+Mn+tHJzMbSMMSWhe/+UW8VS1zd5dunKr1mSxmueWv0a55obuvi8thH4eg6ISO
	 4wpG9Nbdr6vJE/KczEPbC+AArLty/7T3bPH6VWRl47S3scz57Ohr1Nud2i7OOdPNxH
	 bIm3fONsZ+Cd35tpMKZBrShv09TUAPLuAsSgEqC/HCJuYXVjk0bVGrL7EAMCcUFTKo
	 UKjjKfKhxSmAEDXQfEK2bnaLlK02phR6kW/qTCObxVIoVCcL1ukBhbS60vGQgSjfOi
	 tWXLt+tjtIF79FnlPQKQdaCgs0gT9GhlAH491V3QRNbPoJ7tDUOrtGpNBUm9qo6c/U
	 YOJm+O+FLt7DA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF66D60F54;
	Wed, 21 Jan 2026 08:18:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E5FCE160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 08:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA1EA83F0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 08:18:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lRiqxjmLGeuW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 08:18:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD97D83F03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD97D83F03
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD97D83F03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 08:18:21 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-665-218-VjNYMlmT1VsvIqeGiQ-1; Wed,
 21 Jan 2026 03:18:16 -0500
X-MC-Unique: 218-VjNYMlmT1VsvIqeGiQ-1
X-Mimecast-MFC-AGG-ID: 218-VjNYMlmT1VsvIqeGiQ_1768983493
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B6F8E19560A5; Wed, 21 Jan 2026 08:18:12 +0000 (UTC)
Received: from [10.44.32.187] (unknown [10.44.32.187])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id E467F19560A2; Wed, 21 Jan 2026 08:18:03 +0000 (UTC)
Message-ID: <f676c151-e871-4b2e-83f6-6d62bc146337@redhat.com>
Date: Wed, 21 Jan 2026 09:18:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20260116184610.147591-9-ivecera@redhat.com>
 <20260121001650.1904392-2-kuba@kernel.org>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260121001650.1904392-2-kuba@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768983500;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aLjuYxOngZSy7JCsu6Pfdx7HjhY/QhYRMKePJQYZ+kE=;
 b=SqWCvrLoFy5uwjN9vj2nFJQzqIa+4P8tXYB6qLu35xmVskSqNJSeNeCOLL+6ZdNrIrxppi
 /iPWmcuxsngzPKwJT7gpxjkW1uwucqvHfrN6MoHNrDzolgYkTj/QerAXzmfYhOgaQLmJzO
 EKFnuTRsnmxtmn3YThqryRF7qfuJKNg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SqWCvrLo
Subject: Re: [Intel-wired-lan] [net-next, v2,
 08/12] dpll: Enhance and consolidate reference counting logic
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, robh@kernel.org,
 leon@kernel.org, andrew+netdev@lunn.ch, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, devicetree@vger.kernel.org, conor+dt@kernel.org,
 jiri@resnulli.us, richardcochran@gmail.com, saravanak@kernel.org,
 Prathosh.Satish@microchip.com, vadim.fedorenko@linux.dev,
 netdev@vger.kernel.org, mbloch@nvidia.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, aleksander.lobakin@intel.com, jonathan.lemon@gmail.com,
 krzk+dt@kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:robh@kernel.org,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:pabeni@redhat.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:saravanak@kernel.org,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:jonathan.lemon@gmail.com,m:krzk+dt@kernel.org,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:conor@kernel.org,m:jonathanlemon@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 3AFBE5360F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/26 1:16 AM, Jakub Kicinski wrote:
> This is an AI-generated review of your patch.
> 
> Dunno if there's a reason for having this fixed by a later patch,
> if not let's fix. I'm sending the review mostly because of the
> comments on patch 12.
Will reorder these patches... Maybe it would be better to send patch 9
separately to net as this is the fix for the bug we found during
development of this series.

Ivan

