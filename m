Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBF7A3A7BB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 20:37:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6886C406D6;
	Tue, 18 Feb 2025 19:37:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uPVvjClDF0An; Tue, 18 Feb 2025 19:36:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A076406B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739907416;
	bh=BgG6n0zrEP9HpTFNhgNBDu14u9hrl9+026/+VzX4mrs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zZS8nzp3eREzlNq+qi68sQLsPGeWEAOsXkMG21Ad3xheoQuvd2372iGTHZBeBYeAe
	 9W8mTPLqVYR9kXzU4eWcoyUx1+uG8+BZ4c+MSRqitd61zBRv6jg3qEcQYdRTJP2MyJ
	 yeqtENXBd7YivF3yIrMmVo3vEdeQj+5pJdBjBJKGnDhegn7q/Y/Ky8sHh9r9zWKTcs
	 //q/6OLKnHXep8GflxDzV1OcdgzB23xvH56s37C1uo7ZXE787Ug9cRj+x7FP37ppZ1
	 oBG3fclWa3RM93/2FLzSDHP75AQmCjYY2VFKOtUEoJgIUFuVD+IrnTxNJQOTYuOMWk
	 hx7ym1RUsHaCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A076406B1;
	Tue, 18 Feb 2025 19:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7494A968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:36:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46BFD406D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:36:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 29x2SqTh5xNM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 19:36:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 41168406B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41168406B0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41168406B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:36:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 440955C59EB;
 Tue, 18 Feb 2025 19:36:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F99BC4CEE2;
 Tue, 18 Feb 2025 19:36:48 +0000 (UTC)
Date: Tue, 18 Feb 2025 19:36:46 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com,
 pmenzel@molgen.mpg.de
Message-ID: <20250218193646.GJ1615191@kernel.org>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
 <20250217090636.25113-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217090636.25113-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739907410;
 bh=oFEhF3wt6ZT0mOj/XPg0GSRReiIjfauwIWnBqH3w9gM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c8aHHNkXHR5wL11T2YB2E2oCvm87h9wv5eBQhqj8lccbzt4iG8/J8t+bsivhqTksL
 FzUqLxL9vmGymo4EJlKB0ZsdbgL4lA7hebhGmgvwiinvhnkwYcx/0CHJqV1A8LgcH5
 1m/uLWQ9QMyiK1IbTK5+X0Q2ioK9TZhNPb5AM7zORNT4Ulk8h4cgSJd4sqPp3hvnUz
 YAEXmC/d+K5LC3T9td+TbrCWK87ssGvmYvM7Zb4to+DJtreh24r79zdC/NmQQs0VTS
 LSKVYHaeHaIsOsF7sF7aBPNe5D/38J9I+FLvyWxbdhrlMmbufFcToZMAGDaGK+HEwg
 WdeyUdHP7Pcsw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=c8aHHNkX
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/4] ixgbe: add Tx hang
 detection unhandled MDD
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

On Mon, Feb 17, 2025 at 10:06:35AM +0100, Michal Swiatkowski wrote:
> From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> 
> Add Tx Hang detection due to an unhandled MDD Event.
> 
> Previously, a malicious VF could disable the entire port causing
> TX to hang on the E610 card.
> Those events that caused PF to freeze were not detected
> as an MDD event and usually required a Tx Hang watchdog timer
> to catch the suspension, and perform a physical function reset.
> 
> Implement flows in the affected PF driver in such a way to check
> the cause of the hang, detect it as an MDD event and log an
> entry of the malicious VF that caused the Hang.
> 
> The PF blocks the malicious VF, if it continues to be the source
> of several MDD events.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

