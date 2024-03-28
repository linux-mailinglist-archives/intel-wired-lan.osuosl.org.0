Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6FD88F7B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 07:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3BA1606A6;
	Thu, 28 Mar 2024 06:09:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B0X3NZwwzhHJ; Thu, 28 Mar 2024 06:09:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 445C260BEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711606171;
	bh=VYkMqzkWq8zOueZQD/FnwesInAJRBRLI5YBG2U0NESY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m0qc2sfYwYRaxJk5WQhHgjH3IJp8Wg7lJVIUm1kFMze7MgLekIPr+L/nA531AS/Vt
	 pNZPYiGFo/1biSXfhVdFp0t/r9oqfGPt2W8mfSsI8CktDbs/Z8wzPfidmUvXElyLvX
	 kF4awe/cD9hWsDQYHEgkcry/96kHq7zG4jxlr3viFOl/uBA0NCYrZIgGFMlXj1CeQz
	 iMZPzXZ6ThkRFs2Qp3R9LfozfPeSGDXm2Ml6kIo1pvRj7z0Ns7NkvRU6IpVqAnLkyi
	 rn395rZF7d4Gin2Y5tkKcw5dKbxAyqjoTRhKUI3sssCtBs1HS8mQJxCqwJXl8Nu+Wq
	 eZSRqf7SKJ/OA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 445C260BEF;
	Thu, 28 Mar 2024 06:09:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BFC781BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 06:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A24BF81396
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 06:09:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nybYfkLUgxhg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 06:09:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B476813A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B476813A1
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B476813A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 06:09:24 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af3ec.dynamic.kabel-deutschland.de
 [95.90.243.236])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A423E61E5FE3D;
 Thu, 28 Mar 2024 07:09:16 +0100 (CET)
Message-ID: <496d5a21-1401-4279-b599-da73bc65759b@molgen.mpg.de>
Date: Thu, 28 Mar 2024 07:09:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20240326205951.1596963-1-paul.greenwalt@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240326205951.1596963-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix package download
 algorithm
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul, dear Dan,


Thank you for the patch.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
