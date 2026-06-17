Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iFubKWxsMmrpzgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 11:44:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 737FB69805E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 11:44:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=41hpHk5m;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (relaxed)" header.from=lunn.ch (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9245340A08;
	Wed, 17 Jun 2026 09:44:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I0mI61OlfY2S; Wed, 17 Jun 2026 09:44:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DCB04091E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781689449;
	bh=k74zDYNsIHMKvFenq5Y945axJ1MFbmkTfoPjO5NmnpI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=41hpHk5mCnG1fowX7FnxZGaTaHOH6BVDe8GuahbDYCM5wVgsrFwIpAH04rXJV6l0q
	 18jWjdUTJGf7U9Q2hCY2tE3Yk3V90EP1ZX+cwrDoeK5MDI9S0kvohvX6wOkHww7KLN
	 lEhzChobhcoKBFfW9dh0X/lOkOD2GhDpp8+zkenRQ+l8lxbL3l7tGRU2mivyvOaTld
	 9Rrjo2ukE5UiUgU+JcamNQ2iJqy5doMx8lbR7Qe6vSMLFi3MHCIpOs5fYTTeAhJsOo
	 XtnqTg30JY42PRev4Ou8+XCv3aeSSQfK7Te2CNp791RMDeNNXNsAxO45NZ77UUgFS8
	 PYQ/M2M3EuByQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DCB04091E;
	Wed, 17 Jun 2026 09:44:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 55A69347
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 09:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38D1D40910
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 09:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ug8gdoRv_rfU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 09:44:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4DBB44091E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DBB44091E
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DBB44091E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 09:44:06 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wZmoT-0089tB-LK; Wed, 17 Jun 2026 11:44:01 +0200
Date: Wed, 17 Jun 2026 11:44:01 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <9befcf6b-a20b-4e2a-8d22-1bcf1a7460d8@lunn.ch>
References: <20260617084329.199110-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260617084329.199110-1-sergey.temerkhanov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=k74zDYNsIHMKvFenq5Y945axJ1MFbmkTfoPjO5NmnpI=; b=ZMUC71+bhO8Z0xj37TQV8CRqMC
 iKR5RMZTw3EPnHkgzm42OxSq9vInMJX6kUHZjldFGEV6qu4M8TrasdodNuanotzZ63Mj3YuzcngtL
 dCVD5L8DLDGK7QOqDZM+DgD2Tyww8Ke3mHE0fldiu63qPZKu53xOB2BgI+nx0DRFGGhA=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=ZMUC71+b
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Implement PCI
 reset handler
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid,lunn.ch:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 737FB69805E

> +static void ixgbe_reset_prep(struct pci_dev *pdev)
> +{
> +	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
> +	unsigned int timeout = IXGBE_PCIE_RESET_RETRIES;
> +
> +	if (!adapter)
> +		return;
> +
> +	/* Prevent the service task from being requeued in the timer callback
> +	 * while we're resetting.
> +	 */
> +	if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state)) {
> +		timer_delete_sync(&adapter->service_timer);
> +		/* Prevent the service task from running while we're resetting. */
> +		cancel_work_sync(&adapter->service_task);
> +	}
> +
> +	pci_clear_master(pdev);
> +
> +	while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state) && --timeout)
> +		usleep_range(1000, 2000);

Please consider using something from iopoll.h

> +
> +	if (!timeout) {
> +		e_err(drv, "Timed out waiting for __IXGBE_RESETTING to be released. Reset is needed\n");
> +		pci_set_master(pdev);
> +		return;
> +	}

because this is broken. You need to retest the condition before
declaring ETIMEDOUT.

	Andrew
