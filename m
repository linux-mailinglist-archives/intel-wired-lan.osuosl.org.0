Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C951CFFB1A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 20:19:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE9F240A32;
	Wed,  7 Jan 2026 19:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MYSCRMzNn5bC; Wed,  7 Jan 2026 19:19:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58AB540B8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767813546;
	bh=9pxrqf2DimCieH5/QjqTLBagNfiMSAzmWGVySseqiyw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rshGv4DFeGpU0bcdmxYB8+VPkffBwBdypwnFy4HkHFwvusFjEkt9B3Jirxr08DpET
	 jf4CpTraXK25fKhjBQLiI9lE5QUXKfUwzK00kwPPDY0qXjr7mnhjsV30TbFNiFDa1E
	 DYB+3fnAAarFCHPHAG4Vefa3sOGTGFxk4fYX6x9sMakGA36Pst//3GCOl1IM1FoNxb
	 LEOmCPPuRhykimjd9gCJ6DlUPfIvMPNhCg3TykLmcGiA+rnRBYeWz2Fxup2Jlq0Evn
	 Yudj9X2DfjqJg8sN390gGrzAhyxNo7+8038RPX1DAngaz7H5CZRswGEBsoqhvlZJxR
	 mU9hzMV0osDXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58AB540B8C;
	Wed,  7 Jan 2026 19:19:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B72A525B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 19:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D95A40B8A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 19:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6GAQKDRYfHtj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 19:19:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8CB7940A32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CB7940A32
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CB7940A32
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 19:19:02 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-674-T6FdbYucOEiCRwE8RBAcwQ-1; Wed,
 07 Jan 2026 14:18:56 -0500
X-MC-Unique: T6FdbYucOEiCRwE8RBAcwQ-1
X-Mimecast-MFC-AGG-ID: T6FdbYucOEiCRwE8RBAcwQ_1767813533
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 8660018002CC; Wed,  7 Jan 2026 19:18:52 +0000 (UTC)
Received: from [10.44.32.248] (unknown [10.44.32.248])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id DD79C19560A2; Wed,  7 Jan 2026 19:18:43 +0000 (UTC)
Message-ID: <a72faee7-b77f-4654-aab3-8fe24472aaac@redhat.com>
Date: Wed, 7 Jan 2026 20:18:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-2-ivecera@redhat.com>
 <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
 <20251217004946.GA3445804-robh@kernel.org>
 <5db81f5b-4f35-46e4-8fec-4298f1ac0c4e@redhat.com>
 <CAL_JsqJoybgJTAbSjGbTBxo-v=dbYY68tT309CV98=ohWhnC=w@mail.gmail.com>
 <66815c08-8408-4651-b039-d47925ae125e@redhat.com>
 <0000750a-e08e-45c7-a039-5eb754f6e37c@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <0000750a-e08e-45c7-a039-5eb754f6e37c@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767813541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9pxrqf2DimCieH5/QjqTLBagNfiMSAzmWGVySseqiyw=;
 b=cGN33JKiBUWqAHirbT0igpTjFecTimP8zAraJvXknnyDLMGPp+qAkjFfBg/Vi2BtC7IBqD
 yEJ55Pn516uMbl5ApPPBgI+sj494CK9xlcf3hbnP3iaOyEADQuKM9yb3kDZ0Jk+14nclOM
 xytNIh+uyOjRWLU92kIkILsroh0tgcw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=cGN33JKi
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 01/13] dt-bindings: net:
 ethernet-controller: Add DPLL pin properties
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Horatiu Vultur <Horatiu.Vultur@microchip.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/7/26 6:31 PM, Andrew Lunn wrote:
>>> I have no idea what makes sense for ACPI and little interest in
>>> reviewing ACPI bindings. While I think the whole idea of shared
>>> bindings is questionable, really it's a question of review bandwidth
>>> and so far no one has stepped up to review ACPI bindings.
>>
>> It depends... shared bindings allow drivers to read property values
>> without need to have separate OF and ACPI codepaths.
> 
> Do you have real hardware in your hands using ACPI?
> 
Yes, it is based on Intel GNR-D platform with 8 NIC ports and Microchip
DPLL chip on the board.

I.

