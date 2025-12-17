Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E57CC8C00
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 17:26:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E12DF610A0;
	Wed, 17 Dec 2025 16:26:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hOe2OzNJ0LiY; Wed, 17 Dec 2025 16:26:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C3C160B89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765988808;
	bh=c8ITYEiDDA17pI9WooiLNrsNg4OUhaHadkgmCUM3Src=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VxaJ3vBCrzkQBjFvBm6gDBh4oRoYnzzVYPVVlxqawlpmqtKBPTXFyR1FpvN7ElxvN
	 tr8k6QKmeNI0MppE1ItNAzWSCl4D2T4aq0jITDGotfeOsW8dDNhT1r85Kh7i+YrgWU
	 TRyieHAAdSTbs01GdLEJqBg0E0rL+HFpgwaX22gSxYSE4kZN3yH/9MSqV52z+lM6Qz
	 aa6hnadOPMcLVUuuFCXpdzxhixKkVtHqEpU+SYI/AXnHKhzMH+gr1dGTfz3jEkK9Qf
	 KKWIgspj+22Z1VzgJ0iUtT+wqzQnr4t6mwUx7B8ubbpYJReRv3nMFK/4wA1v5KBBxk
	 k70t3fT5XxFwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C3C160B89;
	Wed, 17 Dec 2025 16:26:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EF9F435B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 00:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD5C882389
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 00:49:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R_QPvmZFtKaS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 00:49:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=robh@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E56282376
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E56282376
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E56282376
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 00:49:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3A0B543720;
 Wed, 17 Dec 2025 00:49:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8108C4CEF1;
 Wed, 17 Dec 2025 00:49:48 +0000 (UTC)
Date: Tue, 16 Dec 2025 18:49:46 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20251217004946.GA3445804-robh@kernel.org>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-2-ivecera@redhat.com>
 <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
X-Mailman-Approved-At: Wed, 17 Dec 2025 16:26:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1765932589;
 bh=DNExHzFtlzkFnn3/GNMoj9gWvQBHtxOQZpew5LKKPUU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SMwTSgadUHirIxyUBx2QnuZKJJ5FL5lg7rrvoDS6JUpWfwRhO5E94tsjMZPV79W6l
 QIRhp1Cfw20qrRxdORrEJQmh9MKnyAAeoliIFDzJ+Tik/OguMSdckpu9mtS13TUsoS
 kPtAS4XghFPE+c9YZGkq9TLuDeLCyibKkCdYIngpeAIztsxiEVORzspMqQK+xV66e5
 KBfLrP1pB+0hVYtfgoT9oJUHy2pKUkgLNwAevg8lzAUbb4eeqKirhvM8SU8kcYcBU6
 ig+05Kia3Evtel6azROtQiaPP9njbQOoZVOG6tTX6kQbSiGW5VVzQlie4CLxhr6Qg2
 kUWJOBj9DuwBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SMwTSgad
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ivan Vecera <ivecera@redhat.com>,
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

On Thu, Dec 11, 2025 at 08:56:52PM +0100, Andrew Lunn wrote:
> On Thu, Dec 11, 2025 at 08:47:44PM +0100, Ivan Vecera wrote:
> > Ethernet controllers may be connected to DPLL (Digital Phase Locked Loop)
> > pins for frequency synchronization purposes, such as in Synchronous
> > Ethernet (SyncE) configurations.
> > 
> > Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
> > ethernet-controller schema. This allows describing the physical
> > connections between the Ethernet controller and the DPLL subsystem pins
> > in the Device Tree, enabling drivers to request and manage these
> > resources.
> 
> Please include a .dts patch in the series which actually makes use of
> these new properties.

Actually, first you need a device (i.e. a specific ethernet 
controller bindings) using this and defining the number of dpll-pins 
entries and the names. 

Rob
