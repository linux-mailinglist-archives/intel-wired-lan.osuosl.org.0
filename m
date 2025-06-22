Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B595EAE4810
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 17:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2687B409B9;
	Mon, 23 Jun 2025 15:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qquIYTVDAkxR; Mon, 23 Jun 2025 15:13:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 997B6409F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750691597;
	bh=+8WiigqwKQpH8MPpBrzVD32bylw5zlv3hORq0Em6I+o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xak9zSVrKSslDT/hFGjdwX31Qz7kGuPXhUlUq0NMOenW9E7vQvRKJq9Fyq/ZvK0gf
	 mMO9042CSwHp1kCw0AiGpHQmyZ8jAsfUpabhebCBtGuP3FYwZxdgrfq7Ymre8/JAkv
	 Dw8sH+E/rINH7RXNbpP2NthwyqGoMVwlHI4b1c4bFstguWgMq/af1HrK98ltZpvLv/
	 qtTOqFFhc0QprQ6XgM17/psCbyERRzxEPpB53zUuPDuXEpAtSTD6HD9H0V/QzEW1sh
	 Z7lyhTAurUWPUlRG3Qm9gD8RWL7Ej+HMIxFWl+x+JFF2deylLLpE/ekkHWZUyGQ0d/
	 YPXvb2WrK5P8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 997B6409F9;
	Mon, 23 Jun 2025 15:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F374412C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jun 2025 23:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5688409D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jun 2025 23:05:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jgHDODhWxSu9 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jun 2025 23:05:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=jamie.bainbridge@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6544240078
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6544240078
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6544240078
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jun 2025 23:05:06 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-747fc77bb2aso2664858b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jun 2025 16:05:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750633506; x=1751238306;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+8WiigqwKQpH8MPpBrzVD32bylw5zlv3hORq0Em6I+o=;
 b=dekdkM0HPTcw/AphGacKbZP7YuI1GTExYATnip53+BoOocCioYz1tWlCINAetpvC4L
 2vjmGTmlERGjYBHU4udx8TYmQ1WEj14hi8T0pM0hssuN09UjPmvAFmNRvNpB0g3f6OH1
 uYEuukebzFoml6K0sVleN2C5Qud5BYRk/BYiAZOeOBleZduA6GXliNz0FaSXashBSshk
 tIv15EOXPG+OqDTmCKNLA5G4WdibrLRg5OQUn/uyUCSSb4sURfd3KVy/i1ch7WcRvifb
 G3N+TMWb6AsQmVXb0IO7Z5kodgjDWSKdCS1XroaF0lCwdFX653vb7QhRALKkmcYCuD4P
 W32g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXx/QMeQJCEsVHDnSsQDowZAQpg5k3qyRAgJktPU1FdVVeMOTtquuXQ31Mf4FGjNxnGZN2UOqgFaJo1Hjt1RU0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yweh6oTdY9+0/Fikt+T+kjqPGisgFMVLIQGYzKJy3M3kFqtJNGo
 Kf3FIJhpmZMiIbEHug1fyh20j/w3+jUt4kA9U13UFwvPiteLo8UoK3lr
X-Gm-Gg: ASbGncuscAgrzT4BvTOLcl314alr8F6/42LQ687hKrL7jJ981cQPfCThMWnAx65zWjl
 htZ3JMHwJYK7v3Y3bYqDEnsScx8X0Z9P8IGSVqMIDs9rdpvE/GXYMoMeH4/jO0RQJaAB73peHJm
 rAvXq8mkg00TlEnuPIdafdLC9idMGchHTuPjpEJ8HRAKN80Gi4UCfwMNalyKrJGAiVuN913zrwq
 s/v/19yjoGZxn/uvGSZtClC06iqRUnuvbkPVyh7XPHGZz1LiikAgnQc1Z5NOtRticnIEMRtfbsD
 r/jGDoGvHEttT8Wyp95Z+lVEiksMAnH3IcxKlw3aHgU/Z7XDcmTDUiaKhCBiFTM+XQ==
X-Google-Smtp-Source: AGHT+IHUcLsFTnc4IKgX2LAMTM4wZvSfI8akkpBXsSxMVdgI357MCO6JAckwHvL6TwGWY3Y7ZGrKdw==
X-Received: by 2002:a05:6a00:1804:b0:73c:b86:b47f with SMTP id
 d2e1a72fcca58-7490d6636a8mr16373023b3a.4.1750633505645; 
 Sun, 22 Jun 2025 16:05:05 -0700 (PDT)
Received: from io.local ([159.196.197.79]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7490a46b569sm6656212b3a.20.2025.06.22.16.05.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Jun 2025 16:05:05 -0700 (PDT)
From: Jamie Bainbridge <jamie.bainbridge@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Brett Creeley <brett.creeley@amd.com>,
 Ivan Vecera <ivecera@redhat.com>, Michal Schmidt <mschmidt@redhat.com>
Cc: Jamie Bainbridge <jamie.bainbridge@gmail.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 23 Jun 2025 09:04:41 +1000
Message-Id: <39898c5f9a1d6172aa346ad96a831a899a58ec54.1750633468.git.jamie.bainbridge@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Jun 2025 15:13:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750633506; x=1751238306; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+8WiigqwKQpH8MPpBrzVD32bylw5zlv3hORq0Em6I+o=;
 b=ibmjazbLKzgYDBt3IN53DpvmtZj8yEp90S9WAufgSO8dBSnwJ7TOXagQwDREnJhnJv
 ja8Dk+MF8Ch6vz67hBIlpl58fg8D/jJoS8k9L70hZdq/pZ4mxnP+hRVJ0xCmR63U6pY9
 6C+/PRX0FChQBnmLCp1N/6v2DIltKxCRvdVUiA6iMofymLLqd37iaoQXLuwOojlfDA2u
 krG25d4zbJKEamzAtGBkNYXUQbIOt8RkJyz2EzbWHuikTcw/cqN/fLVhcCWi0Q55L3Ii
 tmJzsZ8DiSW9xzsbR5BHq2HBbDfWFiBMMTVDAB+ZV/+mNNAcQRFe40QnOLvkyJ30IbPk
 o0qg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ibmjazbL
Subject: [Intel-wired-lan] [PATCH net] i40e: Match VF MAC deletion behaviour
 with OOT driver
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

When the PF is processing an AQ message to delete a VF's MACs from the
MAC filter, the Linux kernel driver checks if the PF set the MAC and if
the VF is trusted. However, the out-of-tree driver has intentionally
removed the check for VF trust with OOT driver version 2.26.8.

This results in an undesirable behaviour difference between the OOT
driver and the Linux driver, where if a trusted VF with a PF-set MAC
sets itself down (which sends an AQ message to delete the VF's MAC
filters) then the VF MAC is erased from the interface with the Linux
kernel driver but not with the OOT driver.

This results in the VF losing its PF-set MAC which should not happen.

Change the Linux kernel driver and comment to match the OOT behaviour.

Fixes: ea2a1cfc3b201 ("i40e: Fix VF MAC filter removal")
Signed-off-by: Jamie Bainbridge <jamie.bainbridge@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 88e6bef69342c2e65d8d5b2d7df5ac2cc32ee3d9..45ccbb1cdda0a33527852096ee9759fc19db3a5d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3137,10 +3137,10 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 		const u8 *addr = al->list[i].addr;
 
 		/* Allow to delete VF primary MAC only if it was not set
-		 * administratively by PF or if VF is trusted.
+		 * administratively by PF.
 		 */
 		if (ether_addr_equal(addr, vf->default_lan_addr.addr)) {
-			if (i40e_can_vf_change_mac(vf))
+			if (!vf->pf_set_mac)
 				was_unimac_deleted = true;
 			else
 				continue;
-- 
2.39.5

