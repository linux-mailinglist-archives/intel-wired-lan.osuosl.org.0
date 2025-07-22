Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3598B0DB97
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 15:51:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58A316F57A;
	Tue, 22 Jul 2025 13:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wpFCh0FpZifs; Tue, 22 Jul 2025 13:51:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D25786F56E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753192271;
	bh=2fY9g9SUYOdjTN++Th4P+LF8gvoDANBHyDfHKNyK83k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DGcvTOyKhGjhfP1yWjaHsqHDwS4uOa/KjlS6tiFGC4BPJtdqDXAe22P6jrEKvV9MR
	 rT4+10U1lax5QfuSk4QkgB+5SreIhuiDODCdNXSmmcmkI9Ja0ouKjTR02K2EJN55g2
	 R5AtWe0W9wHKmFVQbDh46wPQfsnC8oAFJbWTmdT7yZ9AIruwILEqI5o018MeVnSxgk
	 7STg807lP185agTr4L3ZeX8o5Hk5r54+11VocrPtvnu/2IQNw9xiczBxGmPsucZzto
	 s724HSeIf25Zq93RHDUJDSr+4sTJfXVJmPE76L7Dq7M2RRJnaf/QB+w0flxi2/8qz9
	 cX9ZWVdp0WPfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D25786F56E;
	Tue, 22 Jul 2025 13:51:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 055A8DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCB5A6F56E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JUI8xamHQbHq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 13:51:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 64D3F61364
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64D3F61364
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64D3F61364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:10 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-7600271f3e9so54737b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 06:51:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753192270; x=1753797070;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2fY9g9SUYOdjTN++Th4P+LF8gvoDANBHyDfHKNyK83k=;
 b=w7EAiG1kcw3oDwGqmAUiFQyRAeHCkBQ5AyTuKvS9VoUwMngqnpYZPU2XEcr7vyaZOe
 GVzz6ZJmltrbu+ABKSoRRNd/sYcCS6pCyriawIhEKI1lHmiIQ9uiCr0wTGs73oSJu5Au
 glonicfTy5V+BKSUat0QY9lw7hBIY7n9aKF9FgP1NWz1GKPkbj0m9VMxFZwcepz255jK
 64Yn83EhMNf0CgFjEidK9iHIoRcjSslfPLskrQmnPhIO+bt+Hzf7QcduPA2ZiM4tBw/Y
 rz1ijYHqSDuKYSm8ECMWp/YDlxVSHcdn0zBGjC7SqvtFl8HTAzuTvMxhpKi25Jzxsyht
 yscQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2rN/v6D9vhiY34tjVHE8XEHy68EF+Kye8x7fXFSHCEkRSfSgtiS02kusNWQjLeAqC2Jkj1mtU7dhxTZx7cV0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyzL687lM1AcHkSW/5VtkJZOxwJ/1MFLmhEzH5Wjg4dmD/qy3OZ
 hLl6k7JcaKPkM2ipjgMOYFa7xK2fchar6N9GurGfZSOrOLuNBhVHluvA
X-Gm-Gg: ASbGncvCsT3l3EStGCUry2uOoJFqzlvrTnCh9WcUrAsX9tVknL5chWECxi9VMv6o2ZQ
 uTcr+2BH7RkAKXxKaZrriTPS9Jn/GkR8IubtpG0cqwkTE4PyB9C4kg3xTTCZGrJFETPeld+XH3Q
 bhb/wCCOJAgy+ygsiY5fdlOFM8e8+9V8nAweYbVqivYyW3oimixC2XZGUqPn/aRynZ9PvPOb7WZ
 rr4K5igqnNwUuXGQYXdbc/lXe4CugVptanjCInxwnqZvk5j436WaKGtzW4UE5ytaSfkWGORmyOd
 ZuwE6I5wfUi8QTEV+8HafqWRyUBp8aVCrMOPIMmOu/9okqgxzZPNMv8vVIeHHIOgxgVOmjzgFx2
 KhK9GwKIn90wRJ7r1DmT4P0mItzamWo1heH+r6LjDFF0orroQnzr0GKdVaSM=
X-Google-Smtp-Source: AGHT+IEC7MH2AMxJZ5WkicvhVYJVAhylhlNJ6cko9YL2g8e/+t2DT7nDz5Xt6lw7DtJ3bGk2tVlpSw==
X-Received: by 2002:a05:6a00:1817:b0:736:5969:2b6f with SMTP id
 d2e1a72fcca58-75ed156d03bmr4420911b3a.6.1753192269548; 
 Tue, 22 Jul 2025 06:51:09 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759c89d3190sm7612924b3a.39.2025.07.22.06.51.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jul 2025 06:51:09 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Tue, 22 Jul 2025 21:50:55 +0800
Message-Id: <20250722135057.85386-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753192270; x=1753797070; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=2fY9g9SUYOdjTN++Th4P+LF8gvoDANBHyDfHKNyK83k=;
 b=VoYFOahw7uDNLLO6GwRq01ezM6SNjOcbmlFK5qoLhOkHy9/YBljJ9N+vJz4HzVcWrM
 VbPLMIfU7eYc4vlvJhuZda+abG75imVYI0zdWIjshOhSOt/M0OmLo/ocXnhubxN6OZ3R
 EyF4IRtgiqbVrQfI5Nz6FibCFayatg7yo6pzslCfmEqsvq+CPKOgCyBMQ5Natp/Rbp3s
 TWMTSjkqjElZkEIW7mQESuHQj+jiJojhEmP0hMJ3mYAISj6+u4AWvu8fWEBzWbliAUhW
 Gldqb3kT5qtzKvm9yLt87j2Ajxrc7zvN5LA8SIMhISSVHM80m4VH0tTF4ipy2bNZ7UoX
 Hjzw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=VoYFOahw
Subject: [Intel-wired-lan] [PATCH net v2 0/2] xsk: fix underflow issues in
 zerocopy xmit
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

From: Jason Xing <kernelxing@tencent.com>

Fix two underflow issues around {stmmac_xdp|igb}_xmit_zc().

Jason Xing (2):
  stmmac: xsk: fix underflow of budget in zerocopy mode
  igb: xsk: solve underflow of nb_pkts in zerocopy mode

 drivers/net/ethernet/intel/igb/igb_xsk.c          | 3 +--
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

-- 
2.41.3

