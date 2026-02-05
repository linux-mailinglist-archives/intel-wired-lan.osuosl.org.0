Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIfNNXxihGng2gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:27:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C749F0AC8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:27:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F43940DB9;
	Thu,  5 Feb 2026 09:27:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uU1LAZihNiD8; Thu,  5 Feb 2026 09:27:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24CD140DAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770283642;
	bh=Tcc6PX6QF1vULhCJJzQoWngAFn2ua3JyJScC85lNYGk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zIKcsiVY1c48v7hgbNT+9nibzdMuqxru4hqEx5dUPGt9Z6rLgXeOsF6W01hLXb2Sa
	 vBxZIjBlS7M9GI5A9C5SpCryDKl+h3tiIYrnJFPIsZY5LLnbVyCcQKK0hh1CPIm627
	 SSycNsiFc5tQIeuFvUI0v37qe32ufHKyDs+BY8TcX0U0lkkdaEKYNaqqCgLUjdZfZE
	 TXzNOGvYSqymFzmH+aeLqfyR54sZcckTeZih6XyjNX43l7fwvP6X5D+nKPZjwrRcQD
	 Jc3KnDaJ+Lfv7bFycT5kcXc2ib7wHgwuEfoFw91rErrbmtjsf9qVelgcHvQeEIzz7o
	 2csjCMXru0k8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24CD140DAC;
	Thu,  5 Feb 2026 09:27:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D3947F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEAD7840EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Q5_ka52bsiu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 09:27:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CBF0F8333F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBF0F8333F
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CBF0F8333F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:27:19 +0000 (UTC)
Received: from ms-a2 (182.51.30.125.dy.iij4u.or.jp [125.30.51.182])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 6159QoOb043991
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Feb 2026 18:26:51 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: vitaly.lifshits@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kohei.enju@gmail.com, kohei@enjuk.jp, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
Date: Thu,  5 Feb 2026 09:26:50 +0000
Message-ID: <20260205092650.7779-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <caf4b292-5fd0-4ced-bfbb-1ea4b99dca24@intel.com>
References: <caf4b292-5fd0-4ced-bfbb-1ea4b99dca24@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=Tcc6PX6QF1vULhCJJzQoWngAFn2ua3JyJScC85lNYGk=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1770283612; v=1;
 b=qh8/qmdci12zQVNAFrKxK7comDby3Q/lv/luuEmIT3bR/AJsjA8e7eudeD7tKKwG
 WHltoUNz21k/3DWxGR8NKIirMtCSh1ODG/nC3gR4Pd0c859kbWtTs50fGsjPzIHW
 QzC9Q4l8DyLaxpQDx7KCM4I0vE/e1JraKj1D9GJGMC1gzeVcWSkPk8omQsBcwEqj
 dhhinzJizti4ftuPwJFwbnzH14nIlnQbVAfCMW7nRfvWqBEL75QPaABZF8qxfKUl
 44fBJ4eE+VQgL45S9LrurATe243IaggxT5oB9WnAlTKC8g2K3zoYVZUKwL9pfsv/
 oL8pygF4NcXyzoqsSYM+KQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=qh8/qmdc
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: fix null pointer
 dereference in
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,lists.osuosl.org,gmail.com,enjuk.jp,kernel.org,vger.kernel.org,redhat.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4C749F0AC8
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 11:16:50 +0200, "Lifshits, Vitaly" wrote:

> On 2/5/2026 10:50 AM, Kohei Enju wrote:
> > On devices without NVM, hw->nvm.ops.validate is set to NULL, therefore
> > functions that perform EEPROM-related operations such as
> > igc_ethtool_set_eeprom() and igc_probe() check for NVM presence in
> > advance. However igc_eeprom_test() unconditionally calls
> > hw->nvm.ops.validate(), potentially causing a null pointer dereference.
> > 
> > NVM-less devices may not be common but possible, so add NULL check
> > before calling hw->nvm.ops.validate().
> > 
> > Fixes: f026d8ca2904 ("igc: add support to eeprom, registers and link self-tests")
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_diag.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_diag.c b/drivers/net/ethernet/intel/igc/igc_diag.c
> > index a43d7244ee70..973d26a5a6c9 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_diag.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_diag.c
> > @@ -158,7 +158,7 @@ bool igc_eeprom_test(struct igc_adapter *adapter, u64 *data)
> >   
> >   	*data = 0;
> >   
> > -	if (hw->nvm.ops.validate(hw) != IGC_SUCCESS) {
> > +	if (hw->nvm.ops.validate && hw->nvm.ops.validate(hw) != IGC_SUCCESS) {
> >   		*data = 1;
> >   		return false;
> >   	}
> 
> 
> Hi Kohei,
> 
> Thank you for your patch.
> 
> Since there are no NVM-less devices I suggest removing the flash-less 
> code entirely from the init flow.

Oh, I see there're no NVM-less devices. Then removing sounds good to me.

Could you clarify what you mean by "init flow"? Do you mean removing
only the flash-less branch in igc_init_nvm_params_i225(), or removing
all flash-less related code including igc_get_flash_presence_i225() and
its callers?

After clarification, I'd love to work on it. Thank you for taking a
look!
