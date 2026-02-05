Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iL7fHz28hGnG4wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 16:50:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 615A1F4C69
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 16:50:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3C360B2B;
	Thu,  5 Feb 2026 15:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NHQyiXGalNDa; Thu,  5 Feb 2026 15:50:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FE1760B3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770306618;
	bh=mbHqqpvf1EsyENiG3xgpDiZNiWcRfgRHeO49XVCu+yQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=efW8atpVsPMeXjk62m5xQsDxj+bEZw1VennRqO09CmQ5zRoUSXXJDH2wMjKbAvsNz
	 U+GTEdkLJicPFkp6Gjw5NK/RynCgi4sPXiAd80ow0s4d5lCAzaiyPAFElutYdC5two
	 DUwoqKLfbYTvwv9oZ2XS0sa89XZLGraVSxtIVwJEZiwsR+krm0Y/oHa5nn7Y/UQ8t+
	 z9dRGGgQ8aLzIAw7AvuEHZcl3CccH8RXIrHu2SQ3pHGQSsiH8nBvKceerelLUgaVon
	 RiVzI1hEjWyN/3VQILRV9mYDNIaVqtk30C9+iZKHu/hgMHj5FxOyPm6Y5H79Q4Jd+5
	 QbhIKAasqRngg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FE1760B3C;
	Thu,  5 Feb 2026 15:50:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BE75B17A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 15:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB3E660B26
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 15:50:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aF12WUtUS-PZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 15:50:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B62D060B25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B62D060B25
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B62D060B25
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 15:50:14 +0000 (UTC)
Received: from ms-a2 (182.51.30.125.dy.iij4u.or.jp [125.30.51.182])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 615Fnh3S027695
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 6 Feb 2026 00:49:44 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: vitaly.lifshits@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kohei.enju@gmail.com, kohei@enjuk.jp, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
Date: Thu,  5 Feb 2026 15:49:43 +0000
Message-ID: <20260205154943.20985-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <3b481682-5a64-412e-a085-8d3c6323dd4e@intel.com>
References: <3b481682-5a64-412e-a085-8d3c6323dd4e@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=mbHqqpvf1EsyENiG3xgpDiZNiWcRfgRHeO49XVCu+yQ=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1770306584; v=1;
 b=Z5AQtUexhixK+Evq42B8d88+dTevYkDrD7m1v+MP4Jt9tmDqwJG0wED8E0kmMWIj
 PTFFjGjlvaOqrZIBoDWKjILFsh+T+NRwhvfMvFLCt51ewz40oos1n4lyS/qYhvyk
 tt4dr+XX9nrkwx0J7+eYfifdQoHYp+TcBrK0QeUQ0ktTIiGRG0xkUkoLe2wlyMzS
 RkiSMcQxQB/B+eaQq6VirsZx55l94TyXXR+gfXOuNfCODP1ARKVCBzzkQuGwupwm
 hZh3gdCzwnOxbQWlIVG5+LHzsyGWXQNit23NsCmc3y8IDYfuux2mMYEMD4pd62qE
 /M7J1cWoO6/88HrM5TNonw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=Z5AQtUex
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
X-Spamd-Result: default: False [3.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	BROKEN_CONTENT_TYPE(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,lists.osuosl.org,gmail.com,enjuk.jp,kernel.org,vger.kernel.org,redhat.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 615A1F4C69
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 12:16:06 +0200, "Lifshits, Vitaly" wrote:

> >> Hi Kohei,
> >>
> >> Thank you for your patch.
> >>
> >> Since there are no NVM-less devices I suggest removing the flash-less
> >> code entirely from the init flow.
> > 
> > Oh, I see there're no NVM-less devices. Then removing sounds good to me.
> > 
> > Could you clarify what you mean by "init flow"? Do you mean removing
> > only the flash-less branch in igc_init_nvm_params_i225(), or removing
> > all flash-less related code including igc_get_flash_presence_i225() and
> > its callers?
> > 
> > After clarification, I'd love to work on it. Thank you for taking a
> > look!
> 
> No, you shouldn’t remove this function.
> 
> However, if for any reason the flash is not present, the driver should 
> fail initialization.

I see. I understand we should fail igc_probe() for NVM-less devices.

> 
> There are two related places that need to be updated to enforce this:
> 
> igc_probe() in igc_main.c
> igc_init_nvm_params_i225() in igc_i225.c
> 
> This way we avoid supporting a configuration that doesn’t exist, and we 
> prevent the driver from partially initializing in an invalid state.

As far as I've skimmed the code, the only call trace is:

igc_probe()
  ei->get_invariants() (always igc_get_invariants_base())
    igc_init_nvm_params_i225()

so modifying igc_init_nvm_params_i225() is sufficient and IIUC we don't
have to modify igc_probe().

igc_init_nvm_params_i225() returns -EIO when there is no NVM, and its
caller igc_get_invariants_base() propagates the error back to
igc_probe().
Note that igc_get_invariants_base() currently ignores the return value
of igc_init_nvm_params_i225(), so I added that check as well.

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 1613b562d17c..e4200279e15f 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -235,6 +235,9 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
                break;
        }

+       if (ret_val)
+               goto out;
+
        /* setup PHY parameters */
        ret_val = igc_init_phy_params_base(hw);
        if (ret_val)
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index 5226d10cc95b..ee1a8eeed9d5 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -476,21 +476,17 @@ s32 igc_init_nvm_params_i225(struct igc_hw *hw)
 {
        struct igc_nvm_info *nvm = &hw->nvm;

+       /* fail initialization for NVM-less devices */
+       if (!igc_get_flash_presence_i225(hw))
+               return -EIO;
+
        nvm->ops.acquire = igc_acquire_nvm_i225;
        nvm->ops.release = igc_release_nvm_i225;
+       nvm->ops.read = igc_read_nvm_srrd_i225;
+       nvm->ops.write = igc_write_nvm_srwr_i225;
+       nvm->ops.validate = igc_validate_nvm_checksum_i225;
+       nvm->ops.update = igc_update_nvm_checksum_i225;

-       /* NVM Function Pointers */
-       if (igc_get_flash_presence_i225(hw)) {
-               nvm->ops.read = igc_read_nvm_srrd_i225;
-               nvm->ops.write = igc_write_nvm_srwr_i225;
-               nvm->ops.validate = igc_validate_nvm_checksum_i225;
-               nvm->ops.update = igc_update_nvm_checksum_i225;
-       } else {
-               nvm->ops.read = igc_read_nvm_eerd;
-               nvm->ops.write = NULL;
-               nvm->ops.validate = NULL;
-               nvm->ops.update = NULL;
-       }
        return 0;
 }

Does this diff make sense to you?
