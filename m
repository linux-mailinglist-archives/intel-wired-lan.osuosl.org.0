Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ED798660E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 20:00:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BB1B84AC9;
	Wed, 25 Sep 2024 18:00:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zuts6JwHRySj; Wed, 25 Sep 2024 18:00:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D19D84ACC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727287227;
	bh=80NsANXDl6afdpJyUxRTROzlpMEuv9TyTDUFDqoq4HI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Yt+YbNpxAKG8supPU0vmzK9qUdfDzlI7CaHH6tnw+I0eXEgGKl44Ldg1jjUUXOssR
	 FcVFyoObgPZK/rVmWpL6e48+DF+hZx4tj3TXeOIWnL21LIpw47Dmz4NqewyBiEUe91
	 tdj3ZbqYPK0Ju7ISazMkrkVbQO5WdwD9zm95I/m8GjxPXxqep/5hBca/PH8rJH2rOy
	 hi8c5eXmvK4VGm9lx3QltmBPoyjOwom10M4u+eOCTchdVTdRIvJ5fW7w41qvBZUL11
	 /Y5YrIKBRdsJrcnMw329Nrkkgk5pSJKEtxAjn3bcmo2Xseixy24uDu5L6w3Bt08Wqk
	 3232muLlhv50g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D19D84ACC;
	Wed, 25 Sep 2024 18:00:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B10A11BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAE7F40396
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:00:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TV-r_GUTKdjr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 18:00:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52a; helo=mail-pg1-x52a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 53B904012B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53B904012B
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53B904012B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:00:23 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-7e6cbf6cd1dso72804a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 11:00:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727287223; x=1727892023;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=80NsANXDl6afdpJyUxRTROzlpMEuv9TyTDUFDqoq4HI=;
 b=SgSzBiyg0qNoIkhqvtYwqWurtYz4VxPqFEPWS8iq7PCSPQ1yGusaNiKz5XXCrDrQem
 JcwFK1R1XmlM0Ul/lm4uC5tuu4UVvqXN5oTBq2sAQWGkk2g+ulvf0IhuirjhuNz1L/6/
 8X6hESfogGl+3YHvF+nDqnFkPSlzAC5hW6SI6JlHmrkpEsuAs51zw861hNSqfPj1MXx5
 Bgbxxr+eYxGbU26K4aQVNjf4B38INSqa48D6eHxvvRJUlywFmiAGMZCHrObUtkGtoauc
 qZX/3tynf+cMB+jmzOY65F6GaYREtM8N6kfByAydC+egNBLrcd42nmDOJz5uJLx+QlU8
 8g8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWDUlklN31CVV06jmGOqPz5EqCX+d2Bh8N1lcRyP76pmI8EOYxl3egimIHaPGAlnIuIqaddDrXfXONlUI7EjLs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YymnmEZezQ6ze4RArnPrBPtkyHWc2EUS4TtKOU7LrYQFtAxdvvL
 uGeZinE5ianF9HUTLRAu+H72fO/8YkWWwVCejKsrEdoqOOJPG03/mgUeduCg/HY=
X-Google-Smtp-Source: AGHT+IHuEEr9A4jmt4t0IDsNG4JI3VKgSWVYhK1yjS6ZBQdIfGIEb27Yn7hFv1mpig5rQWcSs3VyZQ==
X-Received: by 2002:a05:6a20:cfa3:b0:1d2:e888:3982 with SMTP id
 adf61e73a8af0-1d4d4aaf7fdmr4336724637.19.1727287223334; 
 Wed, 25 Sep 2024 11:00:23 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7e6b7c73092sm2980539a12.64.2024.09.25.11.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2024 11:00:22 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Sep 2024 18:00:16 +0000
Message-Id: <20240925180017.82891-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727287223; x=1727892023; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=80NsANXDl6afdpJyUxRTROzlpMEuv9TyTDUFDqoq4HI=;
 b=x89cN6BN87NKOat3YaDFaabGpgfnanUOnWWDgoOXY4TUBf2C4PdQQgqrnVcWL7QLDE
 N62APOod6MCxc0HrUJ1ijyZ5QkUcqnrBo2+Ctc/mKEJ01LlyrzmjAHgmyS7+CJsYpUzD
 FWdZt7ZzKPSvefOYynr8XfS+uKPCj03KYaO5k=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=x89cN6BN
Subject: [Intel-wired-lan] [RFC net-next 0/1] idpf: Don't hardcode
 napi_struct size
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

While working on an RFC which adds fields to napi_struct [1], I got a
warning from the kernel test robot about tripping an assertion in idpf
which seems to hardcode the size of napi_struct. The assertion was
triggered after applying patch 3 from the RFC [2].

I'm submitting this as an RFC so the Intel folks have time to take a
look and request changes, but I plan to submit this next week when
net-next reopens.

I did not want to the include this change in my RFC v4 because I wanted
to keep the review of that RFC focused on the in core work instead, so I
was hoping Intel would be OK to merge this (or a change which
accomplishes the same thing).

Please note: I do not have this hardware and thus have only compile
tested this.

Thanks,
Joe

[1]: https://lore.kernel.org/netdev/20240912100738.16567-1-jdamato@fastly.com/
[2]: https://lore.kernel.org/netdev/20240912100738.16567-6-jdamato@fastly.com/

Joe Damato (1):
  idpf: Don't hard code napi_struct size

 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
2.25.1

