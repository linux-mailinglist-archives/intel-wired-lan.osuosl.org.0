Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3468F6C1886
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Mar 2023 16:25:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B62868146D;
	Mon, 20 Mar 2023 15:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B62868146D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679325922;
	bh=XY7bgH+vG0jJiPuAf8axMu/4Rlw1g5k8F+OpBFaQMuE=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=h8Gn76gPnrrRjXPHliAUQ4uY+8DKk8cMjR2Rbtow+LdST8wUh5jwTLTnE9jMedDBY
	 uBld3E5NqI4EXHWiZd2P+oy/dUpgEI31bwO+Rba/UJDNXKghHdjk6vY4uezgEGaF9c
	 HWCv1WwALvxo6Mk6NPsPpIqlCPyhiVr3tU3/PDW8Ahx8ztadyD5pTFbUqEwrlEzBw7
	 7S/cXlyifFa9Wu5WLZXYMo142r1gzIsoa1FzarsV9KdN9IWygUdDZikn1p3dKO02FT
	 uP4tiB9rlWUM4xVtZjA1i+/3ek1Csqw67OkxXkqfUBPGCYecsQqfz0wD/n64QW6Ex8
	 11tVLwX23rbTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tA717ddHubN6; Mon, 20 Mar 2023 15:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A15E581420;
	Mon, 20 Mar 2023 15:25:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A15E581420
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 526F21BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 12:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 371CF81379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 12:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 371CF81379
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2EXR-jyTj-0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Mar 2023 12:49:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03F6C81378
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03F6C81378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 12:49:04 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id eg48so46117808edb.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Mar 2023 05:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679316543;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=csxAzmG1ZxKtRVplzZVDXPj/0poXWCzMsfVoYIpxsHo=;
 b=3/Qj1hQDD9+noqQRhNd/zJSlayc/DdMe0RLkjxwZaP22Fu+Cop+YnM1mz59pwf0uca
 53gbHXnewOzsZyc6AyiXDiTbxvpC6HL0GVXrg8Nq4unVKMz1HBRXW6Rtu8/TZrPzRdAr
 rxLC1+jYtFjeoQ28dQJsewiACRgAHnRq9xdQhrSq9Y3MntNiItnuViLkoGH0zAXct3sQ
 4+0MKjYKrh+zmNFKsMiu/v+iU+TAtcIc83wmhBNLPaKKAvPAbqh1ijbqq04Xq2bgO2iW
 rOwRZkJHntcZVW/wqZynmPuz0Jl0cynNMhXx05LrSacUne24+tba28uKLHyK695cRCfc
 vr9g==
X-Gm-Message-State: AO0yUKVzXKmFAE0z8/vE3dIet2mpQMf8Z/5cEqhvTaA632pOS1uPEy2l
 yUQKpavf2Gj+bQhfLWRJqO0=
X-Google-Smtp-Source: AK7set9nqiT/JpUhH6DDvPBLRfg/UjuncOawlqG5xE/I+ZlQ89l4YxS91ZHtVhWVEIXGEfESH+gY8g==
X-Received: by 2002:a17:906:5655:b0:921:da99:f39c with SMTP id
 v21-20020a170906565500b00921da99f39cmr10203540ejr.12.1679316542823; 
 Mon, 20 Mar 2023 05:49:02 -0700 (PDT)
Received: from [127.0.1.1] (i130160.upc-i.chello.nl. [62.195.130.160])
 by smtp.googlemail.com with ESMTPSA id
 g26-20020a1709064e5a00b00930525d89e2sm4353779ejw.89.2023.03.20.05.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Mar 2023 05:49:02 -0700 (PDT)
From: Jakob Koschel <jkl820.git@gmail.com>
Date: Mon, 20 Mar 2023 13:48:15 +0100
MIME-Version: 1.0
Message-Id: <20230301-ice-fix-invalid-iterator-found-check-v2-1-7a352ee4f5ac@gmail.com>
X-B4-Tracking: v=1; b=H4sIAA5WGGQC/5WOSw7CMBBDr1LNmkFpwq+suAfqIp9pM4KmKCkRq
 OrdSXsDlrblZ8+QKDIluFYzRMqceAxFyF0F1uvQE7IrGqSQSihRI1vCjj/IIesnO+SJop7GiN3
 4Dg6tJ/tAoRUdzUG5zigoKKMToYk6WL/CBp1Kaw1ekQps279DoAnaYnpOBfjdPuV6i/6bzzXWe
 DlbeXJErmmaWz9ofu7tOEC7LMsPhAedC/YAAAA=
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1679316541; l=2523;
 i=jkl820.git@gmail.com; s=20230112; h=from:subject:message-id;
 bh=k5p5ktQnCBxgX1LUGONT7ZulaFqVVOQWI0ZWXkqT+M4=;
 b=+pHQ+5iJaOQJSjxW6v3N28uZ6Z/ilNRaLOfE4c8rCRFUbcBfIoHTWsM/bC5vPTiDSjoQ5orqddMb
 VYTZv8IaBA7yJV/myuce+ivFL3EzbuFKs2Q4HSRZjwsAtKHHLI9a
X-Developer-Key: i=jkl820.git@gmail.com; a=ed25519;
 pk=rcRpP90oZXet9udPj+2yOibfz31aYv8tpf0+ZYOQhyA=
X-Mailman-Approved-At: Mon, 20 Mar 2023 15:25:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679316543;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=csxAzmG1ZxKtRVplzZVDXPj/0poXWCzMsfVoYIpxsHo=;
 b=psP7AcHp6cs05EyNdk/JlAmNSWWp/abjwa4VMtyGVWtp5N1SwktW+/5uEcOrIA150T
 /6HjoS6ZYJyFracc8i1TaJhVew4dUJa1pSDDnlKInLJWkibXoUblSs3hRJliF0oGdtlG
 +7NY/g9s3a/bz+vbQFFM578m3cmqLyYHx1w6NA89zpScfH0Q1+qPtoNtAHCKaPyolUnE
 I0xD0eJi1J5J+H6azy/zgrtxSCHGTvgVTVT64inFDe382vpd/bSJ9GiFWcyFLj62IVwF
 GLzg+XRH/P8fBQ1l81STEFO+y62S0luvD7JHRv2MW7D8MxnHaER4On3SUaS1/QX2ylTS
 tdLQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=psP7AcHp
Subject: [Intel-wired-lan] [PATCH net v2] ice: fix invalid check for empty
 list in ice_sched_assoc_vsi_to_agg()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, Pietro Borrello <borrello@diag.uniroma1.it>,
 linux-kernel@vger.kernel.org, "Bos, H.J." <h.j.bos@vu.nl>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, intel-wired-lan@lists.osuosl.org,
 Jakob Koschel <jkl820.git@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The code implicitly assumes that the list iterator finds a correct
handle. If 'vsi_handle' is not found the 'old_agg_vsi_info' was
pointing to an bogus memory location. For safety a separate list
iterator variable should be used to make the != NULL check on
'old_agg_vsi_info' correct under any circumstances.

Additionally Linus proposed to avoid any use of the list iterator
variable after the loop, in the attempt to move the list iterator
variable declaration into the macro to avoid any potential misuse after
the loop. Using it in a pointer comparison after the loop is undefined
behavior and should be omitted if possible [1].

Fixes: 37c592062b16 ("ice: remove the VSI info from previous agg")
Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
Signed-off-by: Jakob Koschel <jkl820.git@gmail.com>
---
Changes in v2:
- add Fixes tag
- Link to v1: https://lore.kernel.org/r/20230301-ice-fix-invalid-iterator-found-check-v1-1-87c26deed999@gmail.com
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 4eca8d195ef0..b7682de0ae05 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -2788,7 +2788,7 @@ static int
 ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 			   u16 vsi_handle, unsigned long *tc_bitmap)
 {
-	struct ice_sched_agg_vsi_info *agg_vsi_info, *old_agg_vsi_info = NULL;
+	struct ice_sched_agg_vsi_info *agg_vsi_info, *iter, *old_agg_vsi_info = NULL;
 	struct ice_sched_agg_info *agg_info, *old_agg_info;
 	struct ice_hw *hw = pi->hw;
 	int status = 0;
@@ -2806,11 +2806,13 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 	if (old_agg_info && old_agg_info != agg_info) {
 		struct ice_sched_agg_vsi_info *vtmp;
 
-		list_for_each_entry_safe(old_agg_vsi_info, vtmp,
+		list_for_each_entry_safe(iter, vtmp,
 					 &old_agg_info->agg_vsi_list,
 					 list_entry)
-			if (old_agg_vsi_info->vsi_handle == vsi_handle)
+			if (iter->vsi_handle == vsi_handle) {
+				old_agg_vsi_info = iter;
 				break;
+			}
 	}
 
 	/* check if entry already exist */

---
base-commit: eeac8ede17557680855031c6f305ece2378af326
change-id: 20230301-ice-fix-invalid-iterator-found-check-0a3e5b43dfb3

Best regards,
-- 
Jakob Koschel <jkl820.git@gmail.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
