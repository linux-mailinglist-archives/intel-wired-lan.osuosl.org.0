Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4EACB2794
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 09:57:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E73484860;
	Wed, 10 Dec 2025 08:57:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q1iTZ8Uj1jox; Wed, 10 Dec 2025 08:57:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB15584881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765357071;
	bh=zBOf12YWUXldjL5Dz7uKSOZy3AlkHk8TvbLwHqzM2M0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VD8UFPdzgT7T4RNn6BjPFheQdS4W9FducLd5JjUgT7YfCpD3QUvcfQ+31LBOcskuz
	 vPawvxVL5ncH7f6/7loeSzIpK5CtnceAI3D5pWCDPyrVWgUpgPKUXPU1LXUDLlOUGY
	 779L2moVcImCWisFek8L/SmBjoSQ/NZizp8T/V4qQXZHomB9EltaUsnLxjKWN72Kpr
	 sP+1Sljr4valwz1SjPuYqq88uVB7ayKZp8Ul4bDPYUR2FaH6NE+j0hQuJOt/q8Ng6f
	 DCIdihrUmvm5BMq+PbdCd/0/pvR2UUHWbpU7XsBJUWNni0f3wSSU9zt7wjMFjQcJ+R
	 5aLqkQQ+TcFXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB15584881;
	Wed, 10 Dec 2025 08:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C780F2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 08:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C480260BF2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 08:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hZLdU0wXTrzW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 08:57:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D00466090C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D00466090C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D00466090C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 08:57:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A7ACD6015E;
 Wed, 10 Dec 2025 08:57:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 506CAC4CEF1;
 Wed, 10 Dec 2025 08:57:45 +0000 (UTC)
Date: Wed, 10 Dec 2025 17:57:42 +0900
From: Jakub Kicinski <kuba@kernel.org>
To: "Behera, VIVEK" <vivek.behera@siemens.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Message-ID: <20251210175742.3dba9318@kernel.org>
In-Reply-To: <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1765357067;
 bh=EPclZucFX7AUieJWyQ6LgdWVf0kbFbb2uxZpv0dy4TY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Bfgzi6ht2JuYoBOGXiDEinQTBcO5jOc/RNqvRF9KgLeSPrRF5jyzIJxqQgusZA0g1
 IxrhuV0ix/sAoCpRl001j0zAJI1KNsNSJHm07Et+cWyxzCPElUKF/ByfV8f1n0HBsk
 /9B2RHGg7gJBtYFJgTw0oWlhaTc8FhfQsn016gwvAsJjndnx5Sfwu+Sf3cED+U6fK9
 cgUGiXgsNGouy0Qe2AVOT51u1Cm5VJGZQRwlP5wac53Xmd44d7fP38+1kjlbCI8o54
 V7Wb6I0UJ3uvS8WarALnqvjeoOLwBlbLXl7qz9yup5WcQcPlmDWgE/ikZ7vPVM3u2J
 /gh/mscC5If5w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Bfgzi6ht
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

On Wed, 10 Dec 2025 07:50:55 +0000 Behera, VIVEK wrote:
> Changes in v5:
> - Updated comment style from multi-star to standard /* */ as suggested by  Aleksandr.
> 
> From ab2583ff8a17405d3aa6caf4df1c4fdfb21f5e98 Mon Sep 17 00:00:00 2001
> From: Vivek Behera <vivek.behera@siemens.com>
> Date: Fri, 5 Dec 2025 10:26:05 +0100
> Subject: [PATCH v5] [iwl-net] igc: Fix trigger of incorrect irq in
>  igc_xsk_wakeup function

The formatting of your submissions is all wrong. And you don't follow
our guidance:
https://www.kernel.org/doc/html/next/process/maintainer-netdev.html

Perhaps drop netdev@ and linux-kernel@ from the CC and Intel folks can
help guide/teach you on their own list. Until you have the posting
down..
