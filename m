Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 056A8D0AB9A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 15:48:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38EA460EB4;
	Fri,  9 Jan 2026 14:48:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQnjIhtaF2o0; Fri,  9 Jan 2026 14:48:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98D4960EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767970080;
	bh=nBvA9+9FowTNDc9kk7N2zTDw3Fsb1HWru+YFGxNPkjM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AKjvBgTjrkZKI08HN0q5G8bKhUYHhg4U64/QieZN1dmRXrLLGYcnU6NiAk1ALw9vU
	 Vc/HFiRmIseaW3IWy4wK/ZCnD4vrQHLZAdN8jRRlpbKVfXHnOTDOzTy0B9D7cPHtIQ
	 53ZahfqMeHc1h6Ug5xx6+oQ2S7aMgvUAFrC7QEs3GNyXDDW6VGScpCgiEhIOEDs3TL
	 bR0Vo8trtxpRm4ZBHWrm5AlfeegCkc/kbjV3BHElMzcnkMFqmxZyKery6U6Rc0FXvc
	 OJe/UPHL9M2qoYoVA1bOtyjVsyyiBWqpx6vBX8BeQ8LOu/FdxbqvjOJboO7ok8i0+D
	 4DjT+TrJ1LVeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98D4960EB6;
	Fri,  9 Jan 2026 14:48:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A291012E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 14:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 944D382416
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 14:47:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8k8ylfLdkqGH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 14:47:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F5D782389
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F5D782389
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F5D782389
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 14:47:56 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-384-EL9hj0GqOFSDltbe3aIfHw-1; Fri,
 09 Jan 2026 09:47:49 -0500
X-MC-Unique: EL9hj0GqOFSDltbe3aIfHw-1
X-Mimecast-MFC-AGG-ID: EL9hj0GqOFSDltbe3aIfHw_1767970064
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 282091955F34; Fri,  9 Jan 2026 14:47:44 +0000 (UTC)
Received: from [10.44.33.222] (unknown [10.44.33.222])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 65C3A19560B4; Fri,  9 Jan 2026 14:47:37 +0000 (UTC)
Message-ID: <dba89495-3963-4ce4-a3dc-6187f22dbd9e@redhat.com>
Date: Fri, 9 Jan 2026 15:47:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Rob Herring <robh@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed
 <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-13-ivecera@redhat.com>
 <IA3PR11MB8986036A2826A4EE758A456EE582A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <IA3PR11MB8986036A2826A4EE758A456EE582A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767970075;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nBvA9+9FowTNDc9kk7N2zTDw3Fsb1HWru+YFGxNPkjM=;
 b=N/TqOsztQRDKZmwzY8UYOczMknaAWqWJ9oL550kQ6VZlqbln5zrYGoE0iEv4GT8yJOY6ds
 vWvaYXqss7rl7Bu/8V0NpL8UREI8ZgzHEn1aI8vtA2HVUz+Y/AnQXqayz4qNGz1IC0LqmZ
 PTRRiuBU0pbpEdHVnf25vr/PwrtgY0M=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=N/TqOszt
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/12] ice: dpll: Support
 E825-C SyncE and dynamic pin discovery
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

On 1/9/26 7:15 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Ivan Vecera
>> Sent: Thursday, January 8, 2026 7:23 PM
>> To: netdev@vger.kernel.org
>> Cc: Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Rob Herring <robh@kernel.org>; Leon
>> Romanovsky <leon@kernel.org>; Andrew Lunn <andrew+netdev@lunn.ch>;
>> linux-rdma@vger.kernel.org; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Kubalewski, Arkadiusz
>> <arkadiusz.kubalewski@intel.com>; intel-wired-lan@lists.osuosl.org;
>> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
>> devicetree@vger.kernel.org; Conor Dooley <conor+dt@kernel.org>; Jiri
>> Pirko <jiri@resnulli.us>; Richard Cochran <richardcochran@gmail.com>;
>> Prathosh Satish <Prathosh.Satish@microchip.com>; Vadim Fedorenko
>> <vadim.fedorenko@linux.dev>; Mark Bloch <mbloch@nvidia.com>; linux-
>> kernel@vger.kernel.org; Tariq Toukan <tariqt@nvidia.com>; Lobakin,
>> Aleksander <aleksander.lobakin@intel.com>; Jonathan Lemon
>> <jonathan.lemon@gmail.com>; Krzysztof Kozlowski <krzk+dt@kernel.org>;
>> Saeed Mahameed <saeedm@nvidia.com>; David S. Miller
>> <davem@davemloft.net>
>> Subject: [Intel-wired-lan] [PATCH net-next 12/12] ice: dpll: Support
>> E825-C SyncE and dynamic pin discovery
>>
>> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>
>> Add DPLL support for the Intel E825-C Ethernet controller. Unlike
>> previous generations (E810), the E825-C connects to the platform's
>> DPLL subsystem via MUX pins defined in the system firmware (Device
>> Tree/ACPI).
>>
>> Implement the following mechanisms to support this architecture:
>>
>> 1. Dynamic Pin Discovery: Use the fwnode_dpll_pin_find() helper to
>>     locate the parent MUX pins defined in the firmware.
>>
>> 2. Asynchronous Registration: Since the platform DPLL driver may probe
>>     independently of the network driver, utilize the DPLL notifier
>> chain
>>     (register_dpll_notifier). The driver listens for DPLL_PIN_CREATED
>>     events to detect when the parent MUX pins become available, then
>>     registers its own Recovered Clock (RCLK) pins as children of those
>>     parents.
>>
>> 3. Hardware Configuration: Implement the specific register access
>> logic
>>     for E825-C CGU (Clock Generation Unit) registers (R10, R11). This
>>     includes configuring the bypass MUXes and clock dividers required
>> to
>>     drive SyncE signals.
>>
>> 4. Split Initialization: Refactor `ice_dpll_init()` to separate the
>>     static initialization path of E810 from the dynamic, firmware-
>> driven
>>     path required for E825-C.
>>
>> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_dpll.c   | 715 +++++++++++++++++--
>> -
>>   drivers/net/ethernet/intel/ice/ice_dpll.h   |  25 +
>>   drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
>>   drivers/net/ethernet/intel/ice/ice_ptp.c    |  29 +
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c |   9 +-
>>   drivers/net/ethernet/intel/ice/ice_tspll.c  | 217 ++++++
>> drivers/net/ethernet/intel/ice/ice_tspll.h  |  13 +-
>>   drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
>>   8 files changed, 925 insertions(+), 92 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>> b/drivers/net/ethernet/intel/ice/ice_dpll.c
>> index 4eca62688d834..06575d42de6e9 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>> @@ -5,6 +5,7 @@
> 
> ...
> 
>> +/**
>> + * ice_dpll_init_fwnode_pins - initialize pins from device tree
>> + * @pf: board private structure
>> + * @pins: pointer to pins array
>> + * @start_idx: starting index for pins
>> + * @count: number of pins to initialize
>> + *
>> + * Initialize input pins for E825 RCLK support. The parent pins
>> (rclk0,
>> +rclk1)
>> + * are expected to be defined in the device tree (ACPI). This
>> function
>> +allocates
> Device Tree and ACPI are different firmware interfaces, aren't they?
> Writing "device tree (ACPI)" can mislead readers about where the
> fwnode-backed discovery is expected to come from.

Will fix.

> The code looks good for me.
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Thank you, Alex.
Ivan

