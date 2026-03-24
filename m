Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8F2ZCUWjwmm3fQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 15:44:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2632730A622
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 15:44:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30C2640880;
	Tue, 24 Mar 2026 14:44:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w1p4M1HZhV5M; Tue, 24 Mar 2026 14:44:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6C17408AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774363457;
	bh=AY2OomX3AbtADrQzR4TpX6QwVYqqT/TeFLNbjWcZfIk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v59ZDnSi0zBpE0OQtTP0qVWeWkiXXsySATCUy+Vqmco5iW2vTwFYWZPX7u5c54Dy3
	 kMM3lMbADbdZcDBqOklKw6iubiBbumCarzFBMYinqxWrfa0jTzhwgnh7hcjYq70eXI
	 +twYA7CyUpzd+/KSMX4MGsyZjVX2ULhLHp+48ii1jcXIUa2odgTANY7lvs2rKwYOUs
	 Vo7Lr6WRo9DwSa/XAIMEKD6Jve22nxQhI+GLHY60XycBct6fJcurGqKkKhihjOXUhO
	 Z0sgZxaUq0NuMkniZl3sXvZuaBD+jAcrlRwN7erjJ5PrMjSk7VPHVFXhgPsv6PlfrD
	 LXjx+uk28weKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6C17408AA;
	Tue, 24 Mar 2026 14:44:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C0504353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 14:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A549F83542
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 14:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Erp0l26W_FRD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 14:44:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9F0E883518
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F0E883518
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F0E883518
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 14:44:14 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-515-V1H145coOTewGgl4eWMwSw-1; Tue,
 24 Mar 2026 10:44:10 -0400
X-MC-Unique: V1H145coOTewGgl4eWMwSw-1
X-Mimecast-MFC-AGG-ID: V1H145coOTewGgl4eWMwSw_1774363447
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id CA6B6180060D; Tue, 24 Mar 2026 14:44:06 +0000 (UTC)
Received: from [10.43.2.199] (unknown [10.43.2.199])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id C7360180075D; Tue, 24 Mar 2026 14:43:57 +0000 (UTC)
Message-ID: <95f100a5-ee80-4944-81b4-1f5edf0ca8cf@redhat.com>
Date: Tue, 24 Mar 2026 15:43:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, netdev@vger.kernel.org
References: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
 <20260321222627.1193603-5-grzegorz.nitka@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260321222627.1193603-5-grzegorz.nitka@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-MFC-PROC-ID: inb8y9_UcfVmUkCs8e1uqPtO4ZtzS8xb0dWJmEa2LY0_1774363447
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1774363453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AY2OomX3AbtADrQzR4TpX6QwVYqqT/TeFLNbjWcZfIk=;
 b=FhM4G5XaUXjpfqNMeBUnjb4Hmuw7tyyAtQb06y7yodntmjkJxWaYJfWlAtz/Eh+Q7ZVT0j
 d7ThzPZ3SpTsTvFh2QT5TyNQD78iHm9qceTeIjiZX2b91lhcrPYfdxMaloBqyA/q5NK/Pn
 yP+S5GzEa4fIzxnXfL+MhwmnXca0fd0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FhM4G5Xa
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 4/8] dpll: zl3073x: allow
 SyncE_Ref pin state change
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
Cc: vadim.fedorenko@linux.dev, kuba@kernel.org, jiri@resnulli.us,
 edumazet@google.com, przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 donald.hunter@gmail.com, linux-kernel@vger.kernel.org,
 arkadiusz.kubalewski@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
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
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,redhat.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
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
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2632730A622
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/21/26 11:26 PM, Grzegorz Nitka wrote:
> The SyncE_Ref pin may operate as either an active or inactive reference
> depending on board design and system configuration. Some platforms need
> to disable the SyncE reference dynamically (e.g., when selecting a
> different recovered clock input). The hardware supports toggling this
> pin, therefore advertise the STATE_CAN_CHANGE capability.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>   drivers/dpll/zl3073x/prop.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/dpll/zl3073x/prop.c b/drivers/dpll/zl3073x/prop.c
> index ac9d41d0f978..acd7061a741a 100644
> --- a/drivers/dpll/zl3073x/prop.c
> +++ b/drivers/dpll/zl3073x/prop.c
> @@ -215,6 +215,15 @@ struct zl3073x_pin_props *zl3073x_pin_props_get(struct zl3073x_dev *zldev,
>   
>   		props->dpll_props.type = DPLL_PIN_TYPE_GNSS;
>   
> +	       /*
> +		* The SyncE_Ref pin supports enabling/disabling dynamically.
> +		* Some platforms may choose to expose this through firmware
> +		* configuration later. For now, advertise this capability
> +		* universally since the hardware allows state toggling.
> +		*/
> +		props->dpll_props.capabilities |=
> +			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
> +
>   		/* The output pin phase adjustment granularity equals half of
>   		 * the synth frequency count.
>   		 */

I'm wondering about the purpose of this flag, or rather the need to set
it manually from the driver. Surely, the existence of the
state_on_dpll_set() or state_on_pin_set() callback clearly indicates
this capability.

Wouldn't it be simpler for the core to set it directly based on this?

Ivan

