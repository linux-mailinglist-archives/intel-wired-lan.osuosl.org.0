Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CD08C829A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 10:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD559404D8;
	Fri, 17 May 2024 08:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XswuvV4YExmy; Fri, 17 May 2024 08:35:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0C3240ADE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715934911;
	bh=i2ZlLIVoc+VBi/mW/Z3xn7vCxp4KlpNyw6WXTN9LoDw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=53DB1yZhJOw5NlppP+GYeibsXchIeqOAIEZ90IfZWdD1Rw+FyJEMoVMOPdiyf8YFN
	 qrcgIaviG/12/bpt/9O+fb98Fldr7zXdCOJ0S5RlH9AeXI/TdQWf1dpHTy2jAWvTAg
	 ZobZebQE3EhXTZX/ZX1bH69BXDVh0Xl+UUxsy+eMuOYPkc8j4mesTFcfqIT3UhDS8w
	 t+EB1cH6sHdkqVOXTUp+2H+oDoYtl7gejEiJgM5Fm2faQdkidT61ssPP7OImVPRvYz
	 T+wi1BCh6XEFSyNK9QacqERbi1IdN9hRkwNQ9lflxSWm2WYl9b41RfnQFCAsb6F1Y7
	 2R9CFGmMrjnaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0C3240ADE;
	Fri, 17 May 2024 08:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9762C1BF20B
 for <intel-wired-lan@osuosl.org>; Fri, 17 May 2024 08:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 838AC401CC
 for <intel-wired-lan@osuosl.org>; Fri, 17 May 2024 08:35:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SjUt14s5MaEO for <intel-wired-lan@osuosl.org>;
 Fri, 17 May 2024 08:35:08 +0000 (UTC)
X-Greylist: delayed 591 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 17 May 2024 08:35:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 65248400C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65248400C4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=kai.heng.feng@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65248400C4
 for <intel-wired-lan@osuosl.org>; Fri, 17 May 2024 08:35:08 +0000 (UTC)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3F8EF3FA5E
 for <intel-wired-lan@osuosl.org>; Fri, 17 May 2024 08:25:15 +0000 (UTC)
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-2b34facb83aso8677954a91.3
 for <intel-wired-lan@osuosl.org>; Fri, 17 May 2024 01:25:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715934314; x=1716539114;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=i2ZlLIVoc+VBi/mW/Z3xn7vCxp4KlpNyw6WXTN9LoDw=;
 b=Wx//Wfb1i2AwdMv5KHLimP8MLFBRx387D3cd05+ebIBSRE2akRGvJiuvPrQUv37EMC
 qUeOuBz/8fLvXtqPtE3lLknqbFxkN2v2/E1gOSTvF44wjftgF5pxydZO9I2hnv/ah5e1
 3QURTXblBbvDiM/Gi2Fti733P7cZXk+oKJtgpmiQD0xdlf9+4K1UCbsOkjZCTz+pFVZf
 3FkjRkE01HGBC/MrdEoQAJpO54oYTBsDG3BTkP822DSMOcXJUdWVvS1X221mhXDYo0f6
 Ix2rutR+3qiyEKErct5qeDrideQKLbX+cm8+MBKajit3Qx/vbUCkqUyEo7sPTyxLr/vw
 xjgg==
X-Gm-Message-State: AOJu0YxBRHJWwrjHlOrg0nQwB6Em+toC1LYshk7OHiBwooybcGmWVces
 35ZwPGeeNE/6RqQkrJ/CsscaAbUjm6OPXiN8czuf3ENCzPnY9a5BqsA9t6859K/ng520/v47E56
 qTNy00uJ5Rn4Dkkp092a0JiNFcmiIQKG5K09YbW3rlTAhXNZH1xIBU6kTSiiVK1Nw4i0tqZaKgl
 Xg/1tPmancrPl2hW+OEJeLehf906Vm7QjQwTsKzZqLFs20P3MfOG4pZkiIU2K0Ej8=
X-Received: by 2002:a17:90a:bd0f:b0:2b4:35a9:65fb with SMTP id
 98e67ed59e1d1-2b6cc14b737mr22023257a91.10.1715934313791; 
 Fri, 17 May 2024 01:25:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYugfwBRMRpYGjAOtHyIJEFaCABqoPtZU4jS18aPXhHDXMkF4dbcKnUHpu1KXyatGVCSV2JtiYfpBbcleL1tc=
X-Received: by 2002:a17:90a:bd0f:b0:2b4:35a9:65fb with SMTP id
 98e67ed59e1d1-2b6cc14b737mr22023248a91.10.1715934313465; Fri, 17 May 2024
 01:25:13 -0700 (PDT)
MIME-Version: 1.0
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Fri, 17 May 2024 10:25:01 +0200
Message-ID: <CAAd53p6JWiZCRZcfvwtgvR5v0JkyvHe-8KvTGjvB10oGVXS9ng@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1715934315;
 bh=i2ZlLIVoc+VBi/mW/Z3xn7vCxp4KlpNyw6WXTN9LoDw=;
 h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
 b=V8tgvV0xlAatXrPsylqyMJEI3N77BvV/aGOEWk1GFf2+xO08dD53ZN9xjq0kwj8py
 KCUepq66AFEmfWGyMsy1B/jasoJzxrJUugQi2Y3qUewGVnU9ZWxogF642co25qwXUZ
 c0sCKc7DHo7s18pzzfFZ8HMwblGGH+uP6YUsbJrTtuY32FUFCDtX8OMBFF9DeNzlqE
 1nW72oxpnrk31XJKvHdQo73Xt9qFj+ph2ge/xK4UNo18skjaTMP3a2P+KSOyq/fgcW
 x6JGyjz3nrDidJLDESlZKNbrqrtJD5EWWYcVZSLnmTP0t7pJZZb8F7zMUOapjZcZUH
 qMbPcWDMz/4Cw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=V8tgvV0x
Subject: [Intel-wired-lan] [BUG] ice 0000:02:00.1: Device is not ready,
 no need to suspend it
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
Cc: Ian Chang <ian.chang@canonical.com>, Max Lee <max.lee@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi folks,

We are facing an issue that E810 prevents system from suspending. A
more detailed report can be found at [0].

Kai-Heng

[0] https://bugzilla.kernel.org/show_bug.cgi?id=218799
