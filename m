Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGmhMptq1GletwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 04:23:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C47953A8FE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 04:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E710A60A6E;
	Tue,  7 Apr 2026 02:23:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ji7BLq0OznYX; Tue,  7 Apr 2026 02:23:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D2D560A9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775528599;
	bh=ibrI7+azMWb+UHHWEWwJwR/1w4udrmPm9SwctoKdy/o=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1OiwEHRymGl2uYj3Y1ILRpUeeurV2R1TtaHskykMEKmW62s6fzpVJa1/GhvDvrDrS
	 9vQPvW76EfKjDKE1QYjAwvLsVbRV2qwhsYKvFLXX/8z9y7S5M2j9aOqtYerjvYoRAb
	 fx4MXdQ4mq2kmxPI7V2BE/aASFc2NOi3nMO+iAK4/Hpo93dqahQ1ZQ7TUQysQP3hkC
	 eDfD4T9Fn+4huqK/lzUiugDGEsVKzKlwCCP1CwX/ljRuxGL/yJ0a+2fJ99I00OgiXB
	 YmIRe1EvYAPHmYWIUcsASji5j1ptFpXAtfRmOKKFEpLivahpFkfrYSnZGLmVpgBMDi
	 rH5k6i1rBBFlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D2D560A9B;
	Tue,  7 Apr 2026 02:23:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 126912EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 02:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EFF46400E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 02:23:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fCoOmWRgtzYX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 02:23:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B045D400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B045D400D1
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B045D400D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 02:23:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9461B43BD7;
 Tue,  7 Apr 2026 02:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94A46C4CEF7;
 Tue,  7 Apr 2026 02:23:13 +0000 (UTC)
Date: Mon, 6 Apr 2026 19:23:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <20260406192312.0f7a2760@kernel.org>
In-Reply-To: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775528594;
 bh=J3G58NtGbvUyzKFU/bUdQFTxP5xxRhZEkzXFIq5Rduc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dd8dQAQcF0Pgr/mecx4sBWjNfNCim71nTp5J6mUHfx4MMbJgGpzdZ06ftrKs0GcaR
 e5vkwdJYQTahgggjKrwUSpoiiUU7N0tA67vfupAkvOIFowI9gKSu1Kir4qaxQ2rc5s
 Hk4MzvSziczHaw5PdZgjIiF9CbdD7LCgeyKaymJpskj+eqVKr6j7c0evit3/pH6gGo
 rZ1OmuF1jyOaBbAyW7tB8BIup5AQ+p0k60zm0uuT0PXnyldxiaEoOc9gwnXRdjQ1/e
 FcZ/0sm2fz0gIx83zdOlxj2nlQr2HopHpYMonRay88uUzpt3qcj8uZNNwrcsj0WtM2
 6Rk85JDS7vG0A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dd8dQAQc
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC
 DPLL type and full TX reference clock control for E825
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, jiri@resnulli.us,
 edumazet@google.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 donald.hunter@gmail.com, linux-kernel@vger.kernel.org,
 arkadiusz.kubalewski@intel.com, Prathosh.Satish@microchip.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C47953A8FE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri,  3 Apr 2026 01:06:18 +0200 Grzegorz Nitka wrote:
> This series adds TX reference clock support for E825 devices and exposes
> TX clock selection and synchronization status via the Linux DPLL
> subsystem.
> E825 hardware contains a dedicated Tx clock (TXC) domain that is
> distinct
> from PPS and EEC. TX reference clock selection is device=E2=80=91wide, sh=
ared
> across ports, and mediated by firmware as part of the link bring=E2=80=91=
up
> process. As a result, TX clock selection intent may differ from the
> effective hardware configuration, and software must verify the outcome
> after link=E2=80=91up.
> To support this, the series introduces TXC support incrementally across
> the DPLL core and the ice driver:
>=20
> - add a new DPLL type (TXC) to represent transmit clock generators;

I'm not grasping why this is needed, isn't it part of any EEC system
that the DPLL can drive the TXC? Is your system going to expose multiple
DPLLs now for one NIC?

> - relax DPLL pin registration rules for firmware=E2=80=91described shared=
 pins
>   and extend pin notifications with a source identifier;
> - allow dynamic state control of SyncE reference pins where hardware
>   supports it;
> - add CPI infrastructure for PHY=E2=80=91side TX clock control on E825C;
> - introduce a TXC DPLL device and TX reference clock pins (EXT_EREF0 and
>   SYNCE) in the ice driver;
> - extend the Restart Auto=E2=80=91Negotiation command to carry a TX refer=
ence
>   clock index;
> - implement hardware=E2=80=91backed TX reference clock switching, post=E2=
=80=91link
> - verification, and TX synchronization reporting.
>=20
> TXCLK pins report TX reference topology only. Actual synchronization
> success is reported via the TXC DPLL lock status, which is updated after
> hardware verification: external Tx references report LOCKED, while the
> internal ENET/TXCO source reports UNLOCKED.
> This provides reliable TX reference selection and observability on E825
> devices using standard DPLL interfaces, without conflating user intent
> with effective hardware behavior.

