Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AA7CBC000
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Dec 2025 21:42:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4CD760DAB;
	Sun, 14 Dec 2025 20:42:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4qi1VBqyS2tC; Sun, 14 Dec 2025 20:42:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F28E60DAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765744943;
	bh=7dtrcaVLTNzNgFmQjfOcQvmiNkCId0/CKPWI6nsR8CY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j10JeD7eKmnf0y/SZEWrdZrHjB9lSDW4zMeMK96Q+dRbCvELPKOgYJ09N6FxKeS4p
	 Obu+YNuy8dID7Axig9JeSe0rvjsouXUv9pETQLt8tXQr7ELokCjZbqUon8WCUTN+E0
	 gUSsCVbHV+KODGq9BPSgiAYGoT/ANxznUTSMMGAlBoauqSxrUpmJfC15ebXwrhAVkZ
	 NaK/xixcDkc2jFsIBiA0govLhsBYFyBq4ffEGkAVanL+dYGdzsPJHt10/O/tp7F3Dc
	 6IYTMLUB+QV3aYVMqyPfLHn+0gXxV9+uG/NDEt1/YEpIPBQOFWYb1keNKoFdkpRAZX
	 wOxmgvuDmx/2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F28E60DAD;
	Sun, 14 Dec 2025 20:42:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45852117
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 20:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36E6260DA7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 20:42:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bu5lv4u7a_mP for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Dec 2025 20:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2496A60D84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2496A60D84
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2496A60D84
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 20:42:20 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-530-ZenklePwOjaeAwlmJE1OgQ-1; Sun,
 14 Dec 2025 15:42:12 -0500
X-MC-Unique: ZenklePwOjaeAwlmJE1OgQ-1
X-Mimecast-MFC-AGG-ID: ZenklePwOjaeAwlmJE1OgQ_1765744929
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 4A1331956063; Sun, 14 Dec 2025 20:42:08 +0000 (UTC)
Received: from [10.45.224.53] (unknown [10.45.224.53])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 1B170180045B; Sun, 14 Dec 2025 20:41:57 +0000 (UTC)
Message-ID: <89eaccbb-bfcf-4dac-b7b7-f4259de75dd2@redhat.com>
Date: Sun, 14 Dec 2025 21:41:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-2-ivecera@redhat.com>
 <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765744939;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7dtrcaVLTNzNgFmQjfOcQvmiNkCId0/CKPWI6nsR8CY=;
 b=TKu7tQ/wGInnG+D0xTmQcvREJEdy9x55z1zpZ/wvuQE9Bi+i0ze9Cglsotps3vDFj5cN+g
 YnMdTQvMBanRi/Wn3/7L5VmTSzekiXLK29WVQHlxl0hN+Jl3OBJnhP5BX9K62I3VeWCkay
 FITi+GAMZxt6hk/rjAazQuF63pDsXYI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=TKu7tQ/w
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
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

On 12/11/25 8:56 PM, Andrew Lunn wrote:
> On Thu, Dec 11, 2025 at 08:47:44PM +0100, Ivan Vecera wrote:
>> Ethernet controllers may be connected to DPLL (Digital Phase Locked Loop)
>> pins for frequency synchronization purposes, such as in Synchronous
>> Ethernet (SyncE) configurations.
>>
>> Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
>> ethernet-controller schema. This allows describing the physical
>> connections between the Ethernet controller and the DPLL subsystem pins
>> in the Device Tree, enabling drivers to request and manage these
>> resources.
> 
> Please include a .dts patch in the series which actually makes use of
> these new properties.
> 
> 	Andrew

Hi Andy,

I would include this but the development of this series was done on
Microchip EVB-LAN9668 EDS2 development board [1] and its DTS is not
present in upstream tree. The base DTS for this board is at vendor's
github repo [2]. The second development environment was/is ACPI based
Intel GNR-D platform and the goal is to use unified fwnode API so
ACPI is providing _DSD nodes to specify dpll-pin-names and dpll-names
properties.

Ivan

[1] https://www.microchip.com/en-us/development-tool/ev83e85a
[2] 
https://github.com/microchip-ung/linux/blob/bsp-6.12-2025/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts

