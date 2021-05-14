Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E711380FF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 20:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF8D760E12;
	Fri, 14 May 2021 18:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y4lGLeKbaPFt; Fri, 14 May 2021 18:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DF3B60831;
	Fri, 14 May 2021 18:42:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D0481BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B5B940168
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkn8fIaBcYNa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 18:40:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B41340156
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:40:18 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id l1so100163ejb.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 11:40:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lxrxc/3Z3jVIsCsgfSFIGV92bNeYHWS7yDIGi9KJTvU=;
 b=YR7j/VstE8ccae13Zq0ewhRFF9qDQXNIa0ZV27KPuUfZCrfzrTSZHHG9+XYPaAJpGQ
 UcB/7JK2P3nvIkSCyjB0dlESHgeuLmTA5in41vOz85ryzfgsQwoyIF9XaITSMRVwsrqI
 s8GINXr51zXoUJqUAhdERsY85pMpUYT30iCo/fwRy4Ml/5Bkx/duqJ3TFfDbL3grfaRg
 sgT1FlJ5ZidU/jJaCmLlk2lEEhwRbG7/gu36tgE2KChJVSbFA+Fp284fxUYaI3ReLFIi
 m/pcIx5l5xamGubKjTh2aB7mRNJp9bA3gyXWmEq/6bb5Cy8HFssE/Paw+WjOJdCGPqK8
 Wu/g==
X-Gm-Message-State: AOAM5326RLqyhT2KgeBVHgh7BCnrL1xZaeZWLD6D7iRQVFzG9l11AUv8
 Mm7tSx5hfy61ycVw1je9KmI=
X-Google-Smtp-Source: ABdhPJxBodBBYmBXuen9Ejp5wfOYCaCjxZ1MET6PdnzFoJwHDXVXjsBYdM8lj2LlwI6HA+CHmlPOAQ==
X-Received: by 2002:a17:906:c0c3:: with SMTP id
 bn3mr50194763ejb.498.1621017616765; 
 Fri, 14 May 2021 11:40:16 -0700 (PDT)
Received: from turbo.teknoraver.net (net-5-94-253-60.cust.vodafonedsl.it.
 [5.94.253.60])
 by smtp.gmail.com with ESMTPSA id dj17sm5081505edb.7.2021.05.14.11.40.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 11:40:16 -0700 (PDT)
From: Matteo Croce <mcroce@linux.microsoft.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-stm32@st-md-mailman.stormreply.com,
 kvm@vger.kernel.org, virtualization@lists.linux-foundation.org
Date: Fri, 14 May 2021 20:39:51 +0200
Message-Id: <20210514183954.7129-1-mcroce@linux.microsoft.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 May 2021 18:41:22 +0000
Subject: [Intel-wired-lan] [PATCH net-next 0/3] net: use XDP helpers
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jason Wang <jasowang@redhat.com>, linux-kernel@vger.kernel.org,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Matteo Croce <mcroce@microsoft.com>

The commit 43b5169d8355 ("net, xdp: Introduce xdp_init_buff utility
routine") and commit be9df4aff65f ("net, xdp: Introduce xdp_prepare_buff
utility routine") introduces two useful helpers to populate xdp_buff.
Use it in drivers which still open codes that routines.

Matteo Croce (3):
  stmmac: use XDP helpers
  igc: use XDP helpers
  vhost_net: use XDP helpers

 drivers/net/ethernet/intel/igc/igc_main.c         | 9 +++------
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 9 +++------
 drivers/vhost/net.c                               | 6 ++----
 3 files changed, 8 insertions(+), 16 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
