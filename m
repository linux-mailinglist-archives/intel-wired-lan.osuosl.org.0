Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8366C3ABF12
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 00:42:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E22582C1E;
	Thu, 17 Jun 2021 22:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYW5sF4KTTx4; Thu, 17 Jun 2021 22:42:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 206D2828B5;
	Thu, 17 Jun 2021 22:42:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E7671C1190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 21:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CAF96065D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 21:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8KR0jpCLFAV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 21:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5CAA60640
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 21:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623966866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=oq9kffVK8f1Sa0DR5BkzICWYZziNXpt3UUdoQe11Qgo=;
 b=dyplDuJPhMmNWlPLJvQBQIG0J9eJwrRjHRZi7rH6D8AHfI3tSKLeKiRagUrIGCTaeKZ6UG
 NyOfoIyAFg0syvI+kFTWR5KAVwxT3wjDAi/P3HOLlXylAezXkewC/xbOW/ZG4HPUFV/QEk
 olR3Oefl6u2bqr70ZWe+0ShVPMeTGxE=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-401-5wN1tGQNP2qWXiNH5oYnlw-1; Thu, 17 Jun 2021 17:54:25 -0400
X-MC-Unique: 5wN1tGQNP2qWXiNH5oYnlw-1
Received: by mail-oi1-f198.google.com with SMTP id
 v142-20020acaac940000b02901f80189ca30so3682070oie.22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 14:54:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oq9kffVK8f1Sa0DR5BkzICWYZziNXpt3UUdoQe11Qgo=;
 b=nU1nRkJWVHPABll3OVkaDQfyWL4Oi1ZZ199Jy+1SZtMe0qKruT+hNW8e/7Xjk41eXX
 d+EtooftsQcePIlxZJgxDRzQIcDepqCNkJg1pz/mazxAH6VynX0j47HaUq7TfNU8JB2t
 fgsieEGO13QeTeX8XO88uNdJlqA6R16O5tfenAqPhhTbofCdwVKltirP90pI24wPv+SK
 aoUEqsjTOGJuEo43ADgn+tRHH6WKomRfoTBkOLW3hozuwOi+NUIpq5FxNynX4iKWxW3l
 aATPKksvHA/3stdxtoK56jJ2DNle6uCYV8gdgwOQlz9UyPSUXXdoeQCkAw1RvXoB82HE
 +ukQ==
X-Gm-Message-State: AOAM532Q+NSlWq0/UKZZ5gUL9IpeWYO64lXw+0d3fp/YGlcU6AVT1saV
 C31MZTsT1avhahNVyK01cKnpgXM2r8wn1YcTzspERt9z3Q894xyU3SNw6TGV0daafvJVX7HXuGV
 c9DUkmE6jeaXa94zvv1XgwOq0+DKbCw==
X-Received: by 2002:aca:ab4c:: with SMTP id u73mr4958320oie.26.1623966864547; 
 Thu, 17 Jun 2021 14:54:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyo7BwMtFjeIYDSFNCTepqIb+7Z7yOe/HtmPkjlgbgsZe5nw6U0ZtyUF9gTPIhaoCEL7PLD9w==
X-Received: by 2002:aca:ab4c:: with SMTP id u73mr4958310oie.26.1623966864411; 
 Thu, 17 Jun 2021 14:54:24 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id q11sm1414494ooc.27.2021.06.17.14.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 14:54:24 -0700 (PDT)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Thu, 17 Jun 2021 14:54:19 -0700
Message-Id: <20210617215419.3502075-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 17 Jun 2021 22:42:51 +0000
Subject: [Intel-wired-lan] [PATCH] ice: change return type of
 ice_ptp_request_ts() to s8
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

A gcc 10.3.1 compile error
ice_ptp.h:149:1: error: return type defaults to
  'int' [-Werror=return-type]
  149 | ice_ptp_request_ts(struct ice_ptp_tx *tx, ...
      | ^~~~~~~~~~~~~~~~~~

This stub's return needs to match the decl for
CONFIG_PTP_I588_CLOCK, which matches its use in
ice_txrt.c

Change the implicit int return to s8.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 41e14f98f0e66..d01507eba0364 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -145,7 +145,7 @@ static inline int ice_get_ptp_clock_index(struct ice_pf *pf)
 	return -1;
 }
 
-static inline
+static inline s8
 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 {
 	return -1;
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
