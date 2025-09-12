Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F79AB54FC5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AF3A808F5;
	Fri, 12 Sep 2025 13:38:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l0ZZ67UYgv10; Fri, 12 Sep 2025 13:38:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 893A3823E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757684313;
	bh=m8hDtabwL7VKyzBqF0KTgZUZXggY8uR3cgcOA0ZDG3k=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ngtei9lhGLVA9SP9TSeAoNd0TGIK3ZvU8pcE6r8yJcGCLMAKWy2KZkgwIbNyvC7Ou
	 8PUlRWA+9QBovBOt+TVY8lv2H0xKemcj5XcKp719MvZZBSM5O6UWfNGGXE5xW4nk4K
	 kjTa71rXFF2qXwl8j1urateB6v8j3mqqGmdXeKra/c1nZwqHs2EUj3PArWhPqQEDJf
	 XOT9h0wXXQ1PRWSKhwEEVB86baXlln1Iqwjr1qED+4iOHwv47KPZtaOQKJr3yjZk25
	 Fo8FS7jmKBwG7CKm6JKCC0qDbdR/tXzGzvvi634fW6BbsSDSFg2yeJvYaoSs+nAd5i
	 Tj/bCGS8BT4bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 893A3823E2;
	Fri, 12 Sep 2025 13:38:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5976F12D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FABE40596
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:38:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hqXT586CrtdQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:38:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 806BA40608
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 806BA40608
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 806BA40608
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:38:29 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3DBE260288278;
 Fri, 12 Sep 2025 15:37:45 +0200 (CEST)
Message-ID: <96bda8cf-a1c8-4492-b4f0-d2783b8880b0@molgen.mpg.de>
Date: Fri, 12 Sep 2025 15:37:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/9] ice: pospone service
 task disabling
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

Dear Przemek,


Thank you for the patch. A small nit for the title/summary: Pos*t*pone


Kind regards,

Paul
