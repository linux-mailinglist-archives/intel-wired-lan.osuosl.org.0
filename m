Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SkftNKUfKWo0RAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 10:26:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC9266722C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 10:26:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=XyOtaFFE;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=web.de (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B095160851;
	Wed, 10 Jun 2026 08:26:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ko7IXXVinfje; Wed, 10 Jun 2026 08:26:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC8360856
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781079968;
	bh=ZecaPoWhKZ7SG+Fblu1EYox89+E6+mi5hzvNFNqSVlM=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XyOtaFFE6d2gzVRqZDz11W9AQak1+026tTSbnzmZ2zM9TJ3ZKdmPjY/VhcRF7QBf4
	 ZP9EEZ59rgdMyLq60pbY/++b0oAJTMxZNYJcUVABk6jaeQxwuCnP2BjmjsXm96PRmg
	 A1aFd7Orw+sW1temkissXPq5keWqJ8U2exsgnDydCTRdExDlf71bT4RftcXEpJnOcI
	 st5hja3V9bCn8q4oQ8QIbkmvJgRMz4fDvwYM9aDZCPPocDIDc4XbU4fXCPNHfoeNAY
	 ug4WjpGsolUX+inw/jK/HYjuikHCV7bSqko+aVi1n5QW0XORWCxwb0Qj9waTFx7JB6
	 iLizvnY0RlJ1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DC8360856;
	Wed, 10 Jun 2026 08:26:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C9FF256
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6581C40259
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:26:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SOmjzHQKmGDp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 08:26:05 +0000 (UTC)
X-Greylist: delayed 325 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 10 Jun 2026 08:26:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E75014024B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E75014024B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.14;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E75014024B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:26:04 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from client.hidden.invalid by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MDdy7-1wPpdc0mgx-00Gy7m; Wed, 10
 Jun 2026 10:20:11 +0200
Message-ID: <f0b4e354-9ed7-43f5-8ffe-97019e421c02@web.de>
Date: Wed, 10 Jun 2026 10:20:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Language: en-GB, de-DE
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
From: Markus Elfring <Markus.Elfring@web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:tt9ftAsMhV2Xd5ExyAJN/6mxy3Lt8yKWDmD1QMqMky0DtigoRPw
 6Hi+W+WTbQ2VT+Cj+zvDkqYWAEsyxCf+pxXrjijeQnv13roYXBBBlCicCP3KW+OE/uA7LZq
 LO//PTXNS+TkXL+/GuWhjEMT/+Klqkc1KPyhFn4KDoVnHDbsFGlk478AtGH9pGNNeq9tMud
 7YpkVq1+r9yhMpxkZ/ypQ==
UI-OutboundReport: notjunk:1;M01:P0:rAsYyiQE6WQ=;2ct1NnM5XpIMIz1oup9e87PTgsV
 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
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1781079962; x=1781684762; i=markus.elfring@web.de;
 bh=ZecaPoWhKZ7SG+Fblu1EYox89+E6+mi5hzvNFNqSVlM=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:From:
 Subject:Content-Type:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=K3121vappwIrv8O7SA9abxWWULYuvAJGZQCfovO0Px2KuxmnXt6YHYThidqfYWfQ
 jSnh4KzAb93kYx6ceL+K88ecEezmIvct/7KTkN1ELT/uQktqSaEqIs1SPcy73VeLP
 pYv+P4ms5YSBgjelhc0lZxonDvMCIl0EvHmGN/bv2Yt1IqPOgEk9HX2i9c+kqnLRF
 7oWIkagB0mvdo9LUuxC2BJ0f4nUZds2/XNdi1GhVRA1fNGuplGr6325UPSkE8/458
 LPApd4cEx5LgVAzl2TeM3+8PI2DUoDulfx0IbAo3A/rajztaTy/gmp/SgHu9UcL3b
 wUv7tdcfofyVpsXWSg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=K3121vap
Subject: [Intel-wired-lan] [PATCH net-next] i40e: Use common error handling
 code in i40e_register_auxiliary_dev()
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[web.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[web.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Markus.Elfring@web.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADC9266722C

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Wed, 10 Jun 2026 10:02:58 +0200

Use an additional label so that a bit of exception handling can be better
reused at the end of an if branch.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
=2D--
 drivers/net/ethernet/intel/i40e/i40e_client.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/e=
thernet/intel/i40e/i40e_client.c
index 84a97ca8a6d8..389b8b83afbd 100644
=2D-- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -304,15 +304,15 @@ static int i40e_register_auxiliary_dev(struct i40e_i=
nfo *ldev, const char *name)
 	ldev->aux_dev =3D aux_dev;
=20
 	ret =3D ida_alloc(&i40e_client_ida, GFP_KERNEL);
-	if (ret < 0) {
-		kfree(i40e_aux_dev);
-		return ret;
-	}
+	if (ret < 0)
+		goto free_aux_dev;
+
 	aux_dev->id =3D ret;
=20
 	ret =3D auxiliary_device_init(aux_dev);
 	if (ret < 0) {
 		ida_free(&i40e_client_ida, aux_dev->id);
+free_aux_dev:
 		kfree(i40e_aux_dev);
 		return ret;
 	}
=2D-=20
2.54.0

