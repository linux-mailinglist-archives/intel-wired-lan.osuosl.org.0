Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAg1Hm8EmWlYPAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 02:03:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C7F16BA34
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 02:03:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E4CD841D8;
	Sat, 21 Feb 2026 01:03:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7SniiJKZf3rx; Sat, 21 Feb 2026 01:03:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47DEA841E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771635820;
	bh=q3pKnGUHOAGEa2xcjuB4F9ap5G2/AwEMEVvulB0Fl2A=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hUrSsgZiSwknVheKtJqp68L/JfuZLIoewCUIk4ocNBduLRC4VR1dI4xIV41lQVsrM
	 FTPBFXk0S1gCXIX3KBAljGW++odU69Bo24nC9mhZb+Ha91Vh9DRzJp5WUwxAtg8gUg
	 aQJEuK0bV/i06673ooVaGlSdgiltrpAA078b8zgIQvMaS2ttJnt53QWI3Bj9eoN3Zs
	 +rvBFSfVTVTLqUCPugQRTH0KGZ4QGMGXBo6ZzfjdaU37IXDdm8GpjtbFXVMyqATGak
	 JAQBSTlTsqbOrFH+np3N2EGVCNKG377VMjuxHKbuzoNBFm8wiOT/G3cd5zIh3sPBkF
	 IRG7ovZOqdzGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47DEA841E0;
	Sat, 21 Feb 2026 01:03:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1ECE5183
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 01:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1062540668
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 01:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l8Tpwu8gn6M5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Feb 2026 01:03:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2B6564042B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B6564042B
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B6564042B
 for <intel-wired-lan@osuosl.org>; Sat, 21 Feb 2026 01:03:38 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-59e5f52b13eso3377507e87.2
 for <intel-wired-lan@osuosl.org>; Fri, 20 Feb 2026 17:03:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771635815; cv=none;
 d=google.com; s=arc-20240605;
 b=H20zidJDPFBeL3JCad591QAlTbhp9jZXPCsvoi6ppd3s/mNg35nCOeDHiLI0JK0A7D
 PDV3L9ZgcPWIzJRPcgYa9VnTNbcUDB1bYT2EL4aauOHEnIxAnKJQnlGhKM+5wYc4sssI
 +bdXg/VjOuVOdPl2Q87qHkNV+aZ3TO+Q6tkCXn+1t4vHSkkr8U6H/D5K4Nr16VhDAXK2
 xQW7/vMm3sAz95h7wtjrKm1tt4roXFTnSqNQgjQ3/5lIz5eWpR+H/IlTXm3tcU32hY+K
 uCmraaYyHpMJwxn0PRc5cFpNRghdDGznSIYoghzUP+byRr7RIGf6nuOuDqhKZ9bV/aP6
 3GPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=q3pKnGUHOAGEa2xcjuB4F9ap5G2/AwEMEVvulB0Fl2A=;
 fh=wlsP48//8j1YDqnlw6s+Kgs0BdJY24wYTNeZuMW9HqE=;
 b=IGFEMxQJEmOMvS178gyaUMGyfRhBbkToccnmwmu2906Q6CmM5MfZir0GkBaNkFLaZq
 qPJZ8GZJJaJ9AMEQOWU0ERKkATokuAwLxBqQ7GXpJ53n2htkBDvCfnHJ0CrXA+T8RpUL
 mo1hxNxiH9YYmNnerA7S1gPuNIqpRUqdOL8PLLhckzs5+UDv3WCaApRzF+gomM70Cl0+
 Dd4jDuKzDneRQqk8h3Mw9YCGsfFiwyCLx3unlCOW1TApU3t6kIuovrr9yN1lY16SIY+a
 b0kmn6qwwCh+5j7zjaMMrIHgHuhfxIDogOGuYVIrVa6O93wrSVAqPW0vwKY3J50vgW/h
 2J2Q==; darn=osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771635815; x=1772240615;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=q3pKnGUHOAGEa2xcjuB4F9ap5G2/AwEMEVvulB0Fl2A=;
 b=YYbuGlQHql0DNz4sT7YsntZ09+wOQj9MU/mLQDeqcXmnOlL5eBHdZ8KV6lL0n/6Fz2
 Ff/2BAB18wyn7R239WzOfZ9PV3z0I/O/432cEnGgLxwuSsyoUFScCdkTUpK3WCTEJ3Ox
 QM/kP3ByTuOcpRc20W7T5yjWQWn9fjjsak1F/1TsZuCtFXAcjX3lSSHKXCEhdnULd8Yj
 ndeU5UDe2K4fB8PowtYihtDfj4xTD6EYUvUUt8ALfbnagirm3q9h4xhZdMW4OBs9BMyQ
 u73JyxLjhvEmNfsTTAPt23SWZ8H7QwRneT2C0UDxbzqwxanRUu5L0/B9g7BH7q7eQGxY
 pHOA==
X-Gm-Message-State: AOJu0Yx1dgnYVFCmgI48YmXUOnQYfhM1RNAsBqrShgQYt0o9afiwNffR
 OD+ghkIMx1omu2Bmw8kZfQ8cGKe5a7uFkKBy6rnZPpazDsEN8arJqmNV4uWqsqbIwPxEIcBnfd4
 xwIFCTj50iPd0mfhlYNuNLSj8DodYZqpRQUggZLE=
X-Gm-Gg: AZuq6aKR7uAfTjV9eoCXv2fRt0Sx2o/yDzmpZp+m6whqyG5hHUuwVisqhUvK8zCiChD
 woWxg1rFI/nmEVfxtEIjyBh124Bz51N9Gd8ptBGKXX+hp3m/5qPN6fWy/iy86iqeW12IoKRiHot
 XD2ji4VpYaJo9Wqf+BKy+od1G3Raw2xaokxXzW7aFAPoJhh0/N9cGtgeIQzaePVKDAKXxErw7MY
 ugTdmlI5Bx9Hyl6Llzafe4q40ZRlQ5dbvVe+n92VR9I2RyMJWiiMVXEgmvRI7HmUdZdPPcXLY1u
 kyNDhnzsytJh7z9qWRYqVTR3G8HsHyPhdXJ+lzow
X-Received: by 2002:a05:6512:1599:b0:59d:d32b:1d28 with SMTP id
 2adb3069b0e04-5a0ed99d350mr370534e87.34.1771635815079; Fri, 20 Feb 2026
 17:03:35 -0800 (PST)
MIME-Version: 1.0
From: Matt Vollrath <tactii@gmail.com>
Date: Fri, 20 Feb 2026 20:03:23 -0500
X-Gm-Features: AaiRm53t0wZ739r7KERbLd8oNCBMGT6B8n2bwGuxFwzwE6FCRLL4hpjZC4Ku61s
Message-ID: <CAHQVBFExAim9my56vWG4db9WjKvgC-P8RZOPZ1JOcywBfG5QNA@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Content-Type: multipart/alternative; boundary="0000000000006de247064b4b1bf8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771635815; x=1772240615; darn=osuosl.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=q3pKnGUHOAGEa2xcjuB4F9ap5G2/AwEMEVvulB0Fl2A=;
 b=dFJw1DuHAbjBQ+FBdpo6mcyFaf6wJwZGVFsuLAcM0cnYtOZqF1i0kvStUGlkL98KwF
 wPa10k+Qs/G/65bbPIVbWEgo9HQjQvuPbVZPqkwZ3MoG/lVW4Rp53LNDAO2aFpec9opS
 Wk5GdG34uqBgBy7K99AwX2z9WDZA1PKbJkXWIIuYG2WBBSQGt17wY+vhri2by19KBkZh
 TlyQd12ikWtTOD8X6thFLLAgHf2zxJ9LQry3DIm2qVMyItyukgCsg3mYa+3ciSJbC+TI
 sut0fHjandmNoIBZvZ7372aiOKqY2bfdbUL55Uht+n12mMw9Mw/okkKNkiaGsbySrCeB
 dGzQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=dFJw1DuH
Subject: [Intel-wired-lan] [PATCH net] e1000/e1000e: Fix leak in DMA error
 cleanup
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: F3C7F16BA34
X-Rspamd-Action: no action

--0000000000006de247064b4b1bf8
Content-Type: text/plain; charset="UTF-8"

If an error is encountered while mapping TX buffers, the driver should
unmap any buffers already mapped for that skb.

Because count is incremented after a successful mapping, it will always
match the correct number of unmappings needed when dma_error is reached.
Decrementing count before the while loop in dma_error causes an
off-by-one error. If any mapping was successful before an unsuccessful
mapping for an skb, exactly one DMA mapping would leak.

In these commits, a faulty while condition caused an infinite loop in
dma_error:
Commit 03b1320dfcee ("e1000e: remove use of skb_dma_map from e1000e
driver")
Commit 602c0554d7b0 ("e1000: remove use of skb_dma_map from e1000 driver")

Commit c1fa347f20f1 ("e1000/e1000e/igb/igbvf/ixgb/ixgbe: Fix tests of
unsigned in *_tx_map()") fixed the infinite loop, but introduced the
off-by-one error.

This issue may still exist in the igbvf driver, but I did not address it
in this patch.

Fixes: c1fa347f20f1 ("e1000/e1000e/igb/igbvf/ixgb/ixgbe: Fix tests of
unsigned in *_tx_map()")
Assisted-by: Claude:claude-4.6-opus
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 2 --
 drivers/net/ethernet/intel/e1000e/netdev.c    | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c
b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 7f078ec9c14c..15160427c8b3 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -2952,8 +2952,6 @@ static int e1000_tx_map(struct e1000_adapter *adapter,
 dma_error:
        dev_err(&pdev->dev, "TX DMA map failed\n");
        buffer_info->dma = 0;
-       if (count)
-               count--;

        while (count--) {
                if (i == 0)
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
b/drivers/net/ethernet/intel/e1000e/netdev.c
index ddbe2f7d8112..6bcb57609d16 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5654,8 +5654,6 @@ static int e1000_tx_map(struct e1000_ring *tx_ring,
struct sk_buff *skb,
 dma_error:
        dev_err(&pdev->dev, "Tx DMA map failed\n");
        buffer_info->dma = 0;
-       if (count)
-               count--;

        while (count--) {
                if (i == 0)
-- 
2.43.0

--0000000000006de247064b4b1bf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If an error is encountered while mapping TX buffers, the d=
river should<br>unmap any buffers already mapped for that skb.<br><br>Becau=
se count is incremented after a successful mapping, it will always<br>match=
 the correct number of unmappings needed when dma_error is reached.<br>Decr=
ementing count before the while loop in dma_error causes an<br>off-by-one e=
rror. If any mapping was successful before an unsuccessful<br>mapping for a=
n skb, exactly one DMA mapping would leak.<div><br></div><div>In these comm=
its, a faulty while condition caused an infinite loop in<br>dma_error:<br>C=
ommit 03b1320dfcee (&quot;e1000e: remove use of skb_dma_map from e1000e<br>=
driver&quot;)<br>Commit 602c0554d7b0 (&quot;e1000: remove use of skb_dma_ma=
p from e1000 driver&quot;)<br><br>Commit c1fa347f20f1 (&quot;e1000/e1000e/i=
gb/igbvf/ixgb/ixgbe: Fix tests of<br>unsigned in *_tx_map()&quot;) fixed th=
e infinite loop, but introduced the<br>off-by-one error.<br><br>This issue =
may still exist in the igbvf driver, but I did not address it<br>in this pa=
tch.<br><br>Fixes: c1fa347f20f1 (&quot;e1000/e1000e/igb/igbvf/ixgb/ixgbe: F=
ix tests of unsigned in *_tx_map()&quot;)<br>Assisted-by: Claude:claude-4.6=
-opus<br>Signed-off-by: Matt Vollrath &lt;<a href=3D"mailto:tactii@gmail.co=
m">tactii@gmail.com</a>&gt;<br>---<br>=C2=A0drivers/net/ethernet/intel/e100=
0/e1000_main.c | 2 --<br>=C2=A0drivers/net/ethernet/intel/e1000e/netdev.c =
=C2=A0 =C2=A0| 2 --<br>=C2=A02 files changed, 4 deletions(-)<br><br>diff --=
git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/=
intel/e1000/e1000_main.c<br>index 7f078ec9c14c..15160427c8b3 100644<br>--- =
a/drivers/net/ethernet/intel/e1000/e1000_main.c<br>+++ b/drivers/net/ethern=
et/intel/e1000/e1000_main.c<br>@@ -2952,8 +2952,6 @@ static int e1000_tx_ma=
p(struct e1000_adapter *adapter,<br>=C2=A0dma_error:<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dev_err(&amp;pdev-&gt;dev, &quot;TX DMA map failed\n&quot;);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 buffer_info-&gt;dma =3D 0;<br>- =C2=A0 =C2=A0 =
=C2=A0 if (count)<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cou=
nt--;<br>=C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 while (count--) {<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i =3D=3D 0)<br>diff --=
git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/int=
el/e1000e/netdev.c<br>index ddbe2f7d8112..6bcb57609d16 100644<br>--- a/driv=
ers/net/ethernet/intel/e1000e/netdev.c<br>+++ b/drivers/net/ethernet/intel/=
e1000e/netdev.c<br>@@ -5654,8 +5654,6 @@ static int e1000_tx_map(struct e10=
00_ring *tx_ring, struct sk_buff *skb,<br>=C2=A0dma_error:<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 dev_err(&amp;pdev-&gt;dev, &quot;Tx DMA map failed\n&quot;);=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 buffer_info-&gt;dma =3D 0;<br>- =C2=A0 =C2=
=A0 =C2=A0 if (count)<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 count--;<br>=C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 while (count--) {<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i =3D=3D 0)<br>-- =
<br>2.43.0</div><div><br></div></div>

--0000000000006de247064b4b1bf8--
