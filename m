Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A603CC46BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Dec 2025 17:50:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A6FE40C0B;
	Tue, 16 Dec 2025 16:50:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Bz_fKA51lvP; Tue, 16 Dec 2025 16:50:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 050C540C05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765903815;
	bh=YQaoEdb2Gv5mzjmA2yph1YCAS1Og7y9869UiTShKwOw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qCILxdXP8cQ/kq5CoZfjP1sVrdskHA5FhVJdYkUy7qh07pboWUuAYmYVyqIl6ESvH
	 W4AA9ajXDqzW6a33wYe8IAQuUTpNVnbzhJ4s93Dxc8crgGl5Wke054osrderK+Rj3s
	 BaVif8VrFBuvusXsMbM6mFlYx+NSowXI6a2jfz7YANR/aNgYWZ+z6k1GcMVRKGPo0D
	 SpqZ/Ce6Exj0ZpajrFtezTs9ERZfxWwdoOcu0/TrZ+E0b8IxsInS/BqOguqPAp9lR6
	 vuA++WTjIl2UusApuJmv6Po97SUWhFGRDirQoI6tNd6mChIgDCECNlxdKAhs0pGW5F
	 3aNzXWijTDZww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 050C540C05;
	Tue, 16 Dec 2025 16:50:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 86E44372
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 16:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DC4740BF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 16:50:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NCWUF-3QZ9t9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Dec 2025 16:50:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F23240BF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F23240BF3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F23240BF3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 16:50:11 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-661-6LyMfdK8OfiS9pzsl521xg-1; Tue,
 16 Dec 2025 11:50:06 -0500
X-MC-Unique: 6LyMfdK8OfiS9pzsl521xg-1
X-Mimecast-MFC-AGG-ID: 6LyMfdK8OfiS9pzsl521xg_1765903802
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E77E3180121B; Tue, 16 Dec 2025 16:50:01 +0000 (UTC)
Received: from [10.45.224.214] (unknown [10.45.224.214])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 04967180044F; Tue, 16 Dec 2025 16:49:53 +0000 (UTC)
Message-ID: <2a50d5a3-3116-43e6-ada7-d6c02c483708@redhat.com>
Date: Tue, 16 Dec 2025 17:49:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Rob Herring <robh@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed
 <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
References: <20251215203037.1324945-1-ivecera@redhat.com>
 <20251215203037.1324945-13-ivecera@redhat.com>
 <IA3PR11MB8986B2F4DBD3CDBAE5753C8AE5AAA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <IA3PR11MB8986B2F4DBD3CDBAE5753C8AE5AAA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765903810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YQaoEdb2Gv5mzjmA2yph1YCAS1Og7y9869UiTShKwOw=;
 b=JJP2IPeP7yLzl6kdKYtsp7ed8iQcJBY66Ob0tWyY0R8A0eEW9nPnB8yd72gCft6CS/io/5
 qGQcJ79RCMpVWONdrUQhL0TH1wf5rrBbLCa+pI+muUJBW7KniZgrjiM16nu3Y4xGR3p36o
 VuDs+sqf7vB6kIXD7k8k+2Jz7xiDEQU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=JJP2IPeP
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v2 12/12] ice: dpll:
 Support E825-C SyncE and dynamic pin discovery
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



On 12/16/25 2:28 PM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> ...
>> +		/* Register rclk pin */
>> +		pin = &pf->dplls.rclk;
>> +		dpll_pin_on_pin_unregister(parent->pin, pin->pin,
>> +					   &ice_dpll_rclk_ops, pin);
>> +
>> +		/* Drop fwnode pin reference */
>> +		dpll_pin_put(parent->pin, &parent->tracker);
>> +		parent->pin = NULL;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +out:
>> +	kfree(work);
> It looks like you free the embedded work_struct pointer instead of the allocated ice_dpll_pin_work container @ice_dpll_pin_notify().
> Isn't it?

You are right, will fix this in non-RFC submission.

>> +}
>> +
>> ...
>> +static int ice_dpll_init_info_e825c(struct ice_pf *pf)
>> +{
>> +	struct ice_dplls *d = &pf->dplls;
>> +	int ret = 0;
>> +	int i;
>> +
>> +	d->clock_id = ice_generate_clock_id(pf);
>> +	d->num_inputs = ICE_SYNCE_CLK_NUM;
>> +
>> +	d->inputs = kcalloc(d->num_inputs, sizeof(*d->inputs),
>> GFP_KERNEL);
> It looks like for E825-C the allocated pin info (d->inputs and related fields) is never freed:
> error paths in ice_dpll_init_info_e825c() return after kcalloc() without cleanup, and ice_dpll_deinit() explicitly skips ice_dpll_deinit_info() for this MAC.

You are right, this is Arek's code part. I don't see any problem to call
ice_dpll_deinit_info() also for this MAC (.outputs, .pps.input_prio and
.eec.input_prio should be NULL for e825c so it is safe to kfree them).

Will add correct cleanup into ice_dpll_init_info_e825c() and call
ice_dpll_deinit_info() also for this MAC.

> With the best regards
> Alex
> 
>> +	if (!d->inputs)
>> +		return -ENOMEM;
>> +
>> +	ret = ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
>> +					&pf->dplls.rclk.num_parents);
>> +	if (ret)
>> +		return ret;
>> +
>> +	for (i = 0; i < pf->dplls.rclk.num_parents; i++)
>> +		pf->dplls.rclk.parent_idx[i] = d->base_rclk_idx + i;
>> +
>> +	if (ice_pf_src_tmr_owned(pf)) {
>> +		d->base_1588_idx = ICE_E825_1588_BASE_IDX;
>> +		pf->dplls.pin_1588.num_parents = pf-
>>> dplls.rclk.num_parents;
>> +		for (i = 0; i < pf->dplls.pin_1588.num_parents; i++)
>> +			pf->dplls.pin_1588.parent_idx[i] = d-
>>> base_1588_idx + i;
>> +	}
>> +	ret = ice_dpll_init_pins_info(pf,
>> ICE_DPLL_PIN_TYPE_RCLK_INPUT);
>> +	if (ret)
>> +		return ret;
>> +	dev_dbg(ice_pf_to_dev(pf),
>> +		"%s - success, inputs: %u, outputs: %u, rclk-parents:
>> %u, pin_1588-parents: %u\n",
>> +		 __func__, d->num_inputs, d->num_outputs, d-
>>> rclk.num_parents,
>> +		 d->pin_1588.num_parents);
>> +	return 0;
>> +}
>> +
>> ...
>> +int ice_tspll_bypass_mux_active_e825c(struct ice_hw *hw, u8 port,
>> bool *active,
>> +				      enum ice_synce_clk output)
>> +{
>> +	u8 active_clk;
>> +	u32 val;
>> +
>> +	switch (output) {
>> +	case ICE_SYNCE_CLK0:
>> +		ice_read_cgu_reg(hw, ICE_CGU_R10, &val);
>> +		active_clk = FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK,
>> val);
>> +		break;
>> +	case ICE_SYNCE_CLK1:
>> +		ice_read_cgu_reg(hw, ICE_CGU_R11, &val);
>> +		active_clk = FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK,
>> val);
>> +		break;
>> +	default:
>> +		return -EINVAL;
>> +	}
> ice_read_cgu_reg() return codes are ignored, can you explain why?

Arek's code... will fix in the non-RFC submission.

Thanks a lot Alex for your sharp eyes. ;-)

Ivan

