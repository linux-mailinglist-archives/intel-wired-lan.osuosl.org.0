Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5243ED0B2DD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 17:19:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06FCF60EBD;
	Fri,  9 Jan 2026 16:19:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iEPussONgQ-C; Fri,  9 Jan 2026 16:19:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8054C60EC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767975577;
	bh=jKUbx/Z1+Yt4q5NGapHD0PxmcD1lDzWGnEJYNLdw6QA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mh8IG24oB6eag11x0i/hJM0K7ynj4OuPiSXPTLlQbFvkzAfEsPkbtXsjOcViYz5NU
	 PvPirjrTnSLgeNrntmkjK3g+UXjzOaQaetN9jWDeoFXdF1vRmGsyuKB0Y/saPyq9fL
	 32lOP/Kq4Qg6iFEBhTdY8NQ852Yn51iAbe8Pg9Vht+ZlSKprC2cf3Hde8x6p+UNnju
	 nMok7N5AkT8jIftzgNanp2/f1WNK3LRUZNOa3EPg6k4YWbyNJBkgpWVp5mbSqLXK8E
	 WKCxbfSAO/2yAe2w+XfCH/qJ1TQzyL6KlQcHR/k9Coj28U14JC+vq1WGA2elf5G+wd
	 VN7SQWwEhaGhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8054C60EC7;
	Fri,  9 Jan 2026 16:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0516D12E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 16:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBF4E40B11
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 16:19:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AeI6yjkAk-Cx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 16:19:35 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 09 Jan 2026 16:19:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6E03940539
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E03940539
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.184;
 helo=out-184.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com
 [91.218.175.184])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E03940539
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 16:19:33 +0000 (UTC)
Message-ID: <67ec1ef6-4148-42d8-a37d-56d089c6d686@linux.dev>
Date: Fri, 9 Jan 2026 16:12:18 +0000
MIME-Version: 1.0
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-6-ivecera@redhat.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20260108182318.20935-6-ivecera@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1767975143;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jKUbx/Z1+Yt4q5NGapHD0PxmcD1lDzWGnEJYNLdw6QA=;
 b=s/BekWOLdsRBW/H9lUmDHMUGOMrh2PKQQVgUaBpcXEL5ebGzElBvaFnimjXKayq52OS5sv
 +0dQUR6T0rVlTxwJayh7VGLyCf1VwJ3mrXrfjwv6xe9Go/ZpGuMtNE4eV1NTO9ESXTXrO6
 cbJApz2ahZld+6YGW+MxdytZ4tGZCw0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=s/BekWOL
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/12] dpll: Add notifier
 chain for dpll events
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
> From: Petr Oros <poros@redhat.com>
> 
> Currently, the DPLL subsystem reports events (creation, deletion, changes)
> to userspace via Netlink. However, there is no mechanism for other kernel
> components to be notified of these events directly.
> 
> Add a raw notifier chain to the DPLL core protected by dpll_lock. This
> allows other kernel subsystems or drivers to register callbacks and
> receive notifications when DPLL devices or pins are created, deleted,
> or modified.
> 
> Define the following:
> - Registration helpers: {,un}register_dpll_notifier()
> - Event types: DPLL_DEVICE_CREATED, DPLL_PIN_CREATED, etc.
> - Context structures: dpll_{device,pin}_notifier_info  to pass relevant
>    data to the listeners.
> 
> The notification chain is invoked alongside the existing Netlink event
> generation to ensure in-kernel listeners are kept in sync with the
> subsystem state.
> 
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Petr Oros <poros@redhat.com>

LGTM, Thanks!

Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
