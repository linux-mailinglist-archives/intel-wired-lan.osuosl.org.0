Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A948D39057
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jan 2026 19:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09514611F4;
	Sat, 17 Jan 2026 18:22:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H7ghGEHbtC_R; Sat, 17 Jan 2026 18:22:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CAE3611EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768674133;
	bh=h1XwfyBOA2rxjy0dGHmw0NBN5mZlkaFY9bVx7FsHrVU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jz6WqbazLPf0W3aEbxK88637LGe+n5ltiIaKBGbMiopDG292ZGjebKmp1x6QU6jsG
	 ZA3R2bHE/EDWygj8c2Vef6DqId5GojTnVgS+NQNRPde2JmpqZso5NBdJ61xZX17NWg
	 Vkm4WnZcpRqHLhBZ6ynjhARFq7fHqCcsmfjb5V+i0GPDN2Ejkb4pbuygii/2FqNjEZ
	 EzVnc7MaG6d6/YnwYV/yVYcCpW9z4Wyout6XvDoI5vMUJb1Q0G3U9m0KcY03Z+mUDb
	 TSSH/fZMp+q8yp6uvjKXmVK5HJsZJdmoHvRAAnt6coM6wfnUbU+74LUSvU1quz/7bi
	 PDvWvuREQjPMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CAE3611EA;
	Sat, 17 Jan 2026 18:22:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF712347
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 18:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C1A983F59
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 18:22:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9d9O74Jpr6U for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jan 2026 18:22:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A1D483ED3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A1D483ED3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A1D483ED3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 18:22:09 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-496-hgAFbccKNUaAQkdMGGmumA-1; Sat,
 17 Jan 2026 13:22:02 -0500
X-MC-Unique: hgAFbccKNUaAQkdMGGmumA-1
X-Mimecast-MFC-AGG-ID: hgAFbccKNUaAQkdMGGmumA_1768674118
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 029F21956094; Sat, 17 Jan 2026 18:21:58 +0000 (UTC)
Received: from [10.44.32.32] (unknown [10.44.32.32])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 48F9518001D5; Sat, 17 Jan 2026 18:21:50 +0000 (UTC)
Message-ID: <45be7c3e-bd87-4448-aff1-d91794099391@redhat.com>
Date: Sat, 17 Jan 2026 19:21:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-2-ivecera@redhat.com>
 <92bfc390-d706-4988-b98d-841a50f10834@redhat.com>
 <CAL_Jsq+m7-wop-AU-7R-=2JsUqb+2LsVTXCbZw==1XuAAQ4Tkg@mail.gmail.com>
 <a5dad0f9-001c-468f-99bc-e24c23bc9b36@redhat.com>
 <CAL_JsqJhqp-cgj604eEgxD47gJci0d3CFYf1wC_t1c00OptTiQ@mail.gmail.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <CAL_JsqJhqp-cgj604eEgxD47gJci0d3CFYf1wC_t1c00OptTiQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768674128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h1XwfyBOA2rxjy0dGHmw0NBN5mZlkaFY9bVx7FsHrVU=;
 b=b7XFIef6WP+B7gESRbMYyYoMci8qZtqJUFLjoNd2nrkzKEOPX7hN7LhIOYnobsIjLFsTWa
 l3CPBX1jaBpdr64qjZ3yKXpVQFxkbNptlG75sC2pORW3N1yJWtzO29RJU4rtr7y8EgQ3Of
 O/CxlZurxrXHcHDUN2gKFUDWnzmfe78=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=b7XFIef6
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/12] dt-bindings: dpll: add
 common dpll-pin-consumer schema
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, Leon Romanovsky <leon@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/17/26 12:39 AM, Rob Herring wrote:
> On Fri, Jan 16, 2026 at 1:00 PM Ivan Vecera <ivecera@redhat.com> wrote:
>>
>> On 1/16/26 4:23 PM, Rob Herring wrote:
>>> On Thu, Jan 15, 2026 at 6:02 AM Ivan Vecera <ivecera@redhat.com> wrote:
>>>>
>>>> On 1/8/26 7:23 PM, Ivan Vecera wrote:
>>>>> Introduce a common schema for DPLL pin consumers. Devices such as Ethernet
>>>>> controllers and PHYs may require connections to DPLL pins for Synchronous
>>>>> Ethernet (SyncE) or other frequency synchronization tasks.
>>>>>
>>>>> Defining these properties in a shared schema ensures consistency across
>>>>> different device types that consume DPLL resources.
>>>>>
>>>>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>>>>> ---
>>>>>     .../bindings/dpll/dpll-pin-consumer.yaml      | 30 +++++++++++++++++++
>>>>>     MAINTAINERS                                   |  1 +
>>>>>     2 files changed, 31 insertions(+)
>>>>>     create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>>>>> new file mode 100644
>>>>> index 0000000000000..60c184c18318a
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>>>>> @@ -0,0 +1,30 @@
>>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>>> +%YAML 1.2
>>>>> +---
>>>>> +$id: http://devicetree.org/schemas/dpll/dpll-pin-consumer.yaml#
>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>> +
>>>>> +title: DPLL Pin Consumer
>>>>> +
>>>>> +maintainers:
>>>>> +  - Ivan Vecera <ivecera@redhat.com>
>>>>> +
>>>>> +description: |
>>>>> +  Common properties for devices that require connection to DPLL (Digital Phase
>>>>> +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
>>>>> +
>>>>> +properties:
>>>>> +  dpll-pins:
>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>> +    description:
>>>>> +      List of phandles to the DPLL pin nodes connected to this device.
>>>>> +
>>>>> +  dpll-pin-names:
>>>>> +    $ref: /schemas/types.yaml#/definitions/string-array
>>>>> +    description:
>>>>> +      Names for the DPLL pins defined in 'dpll-pins', in the same order.
>>>>> +
>>>>> +dependencies:
>>>>> +  dpll-pin-names: [ dpll-pins ]
>>>>> +
>>>>> +additionalProperties: true
>>>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>>>> index 765ad2daa2183..f6f58dfb20931 100644
>>>>> --- a/MAINTAINERS
>>>>> +++ b/MAINTAINERS
>>>>> @@ -7648,6 +7648,7 @@ M:      Jiri Pirko <jiri@resnulli.us>
>>>>>     L:  netdev@vger.kernel.org
>>>>>     S:  Supported
>>>>>     F:  Documentation/devicetree/bindings/dpll/dpll-device.yaml
>>>>> +F:   Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>>>>>     F:  Documentation/devicetree/bindings/dpll/dpll-pin.yaml
>>>>>     F:  Documentation/driver-api/dpll.rst
>>>>>     F:  drivers/dpll/
>>>>
>>>> Based on private discussion with Andrew Lunn (thanks a lot), this is
>>>> wrong approach. Referencing directly dpll-pin nodes and using their
>>>> phandles in consumers is at least unusual.
>>>>
>>>> The right approach should be referencing dpll-device and use cells
>>>> to specify the dpll pin that is used.
>>>
>>> You only need a cells property if you expect the number of cells to
>>> vary by provider.
>>>
>>> However, the DPLL device just appears to be a clock provider and
>>> consumer, so why not just use the clock binding here? Also, there is
>>> no rule that using foo binding means you have to use foo subsystem in
>>> the kernel.
>>
>> Hmm, do you mean something like this example?
>>
>> &dpll0 {
>>       ...
>>       #clock-cells = <2>; /* 1st pin index, 2nd pin type (input/output) */
>>
>>       input-pins {
>>           pin@2 {
>>               reg = <2>;
>>               ...
>>           };
>>           pin@4 {
>>               reg = <4>;
>>               ...
>>           };
>>       };
>>       output-pins {
>>           pin@3 {
>>               reg = <3>;
>>           };
>>       };
>> };
>> &phy0 {
>>       ...
>>       clock-names = "rclk0", "rclk1", "synce_ref";
>>       clocks = <&dpll0 2 DPLL_INPUT>,
>>                <&dpll0 4 DPLL_INPUT>,
>>                <&dpll0 3 DPLL_OUTPUT>;
>>       ...
>> };
> 
> No, clock providers are always the clock outputs, and clock consumers
> are the clock inputs. So something like this:
> 
> &dpll0 {
>       ...
>       #clock-cells = <1>; /* 1st pin index */
> 
>       // clocks index corresponds to input pins on dpll0 */
>       clocks = <&phy0 0>, <&phy0 1>, <&phy1 0>, <&phy1 1>
> };
> &phy0 {
>       ...
>       #clock-cells = <1>;
>       clocks = <&dpll0 3>;
>       ...
> };

Fully understand now... will modify the patch-set accordingly.
Thanks for the advises.

Ivan

