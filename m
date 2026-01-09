Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E18D0B0DC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 16:52:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7881160EC1;
	Fri,  9 Jan 2026 15:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cV12OfawUWed; Fri,  9 Jan 2026 15:52:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07C7B60EBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767973958;
	bh=vc/maUPZAp7DIDSLo/uhhCaMc9Kvj50L6oY3J/L/BcQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=45BCu7LArHInPNga3Hlo4/EEnckqn5RzXwCCpBN+SCCDc+uhb7lsJOZpo/hBFh/Rg
	 KJ//hKC1/8G6yItSiukGdyj+f3404+v8LG7+2kvlO9n+uoWLrDkZOKEULXZdpTM+qM
	 8pdXvv8mjPns+YBQWPWTa6sWmeaXhhS9C0lGe26ooqU0jo7MYE/D91a8HtNKpInAKV
	 Ua0j7RNw/xfD2uzAQ8GAxEvIQ6KWsZQ4DMv9M+1DSdTcAapw757DAvvZRbsLxqd69U
	 vl0AVl07XSuxDB9eRyR4REAavZQeuFTFe1tz/yMq/mq+uyvOzO6KIUtLMHbI/60nXG
	 9FUsR8da8wJMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07C7B60EBB;
	Fri,  9 Jan 2026 15:52:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 72ECD131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 15:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 595CD80B62
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 15:52:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aN5IBBIYdcBi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 15:52:34 +0000 (UTC)
X-Greylist: delayed 333 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 09 Jan 2026 15:52:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4892180AC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4892180AC8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.188;
 helo=out-188.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com
 [95.215.58.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4892180AC8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 15:52:33 +0000 (UTC)
Message-ID: <65404ab2-b67d-4138-9aa4-b29fc77ed345@linux.dev>
Date: Fri, 9 Jan 2026 15:46:41 +0000
MIME-Version: 1.0
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-3-ivecera@redhat.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20260108182318.20935-3-ivecera@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1767973613;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vc/maUPZAp7DIDSLo/uhhCaMc9Kvj50L6oY3J/L/BcQ=;
 b=EEALnieZjoGdn0FT7Y3lAyTtqq85oEfoigG7XF/sAByqQBj32pHzi3niAOJD87Vo1R2a+g
 q9huNKPRLv1ccFn+YYBoqNjg1RNTksB63JyaVhLDXiPh7bFPkotHE2rLtRcz6LdFgt0mjR
 /zDy9q4V/fekD1h38aUIg9rmLfm/HiY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=EEALnieZ
Subject: Re: [Intel-wired-lan] [PATCH net-next 02/12] dpll: Allow
 associating dpll pin with a firmware node
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
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 08/01/2026 18:23, Ivan Vecera wrote:
> Extend the DPLL core to support associating a DPLL pin with a firmware
> node. This association is required to allow other subsystems (such as
> network drivers) to locate and request specific DPLL pins defined in
> the Device Tree or ACPI.
> 
> * Add a .fwnode field to the struct dpll_pin
> * Introduce dpll_pin_fwnode_set() helper to allow the provider driver
>    to associate a pin with a fwnode after the pin has been allocated
> * Introduce fwnode_dpll_pin_find() helper to allow consumers to search
>    for a registered DPLL pin using its associated fwnode handle
> * Ensure the fwnode reference is properly released in dpll_pin_put()
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
> Changes:
> RFC v2:
> - dpll_pin_fwnode_set() helper to set firmware node without touching
>    dpll_pin_get()

Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
