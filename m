Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3142B6ADB86
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 11:13:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 745BB60E5F;
	Tue,  7 Mar 2023 10:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 745BB60E5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678183991;
	bh=1du1SOn0lyQUEkLW2ITA5jSVO7P8Ecf1Vyt+GwC6Dj4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pzWwsX8/kFWeNSN3BsbTfxKJYF5UF6DPmJgDAz6YcjydYPyOnyz+jjqPNdvWZtMXR
	 VcDzz3S07JGwcnZYlrEOw/oZAPjW3AYUjblwu6J3GJLl4nrzb2xUPIGG48caX/5qMw
	 +/kxg07kEZY5Z0iHBjbCw0ARltCtZSk5goKW8S66GZcp9d7Qt7EQL20cQEMbXg5zqz
	 SAFkB0x2B6uAL5SFKdgfQOZ2NB4nCZIXc+zc/hAm3kO8ieBEKuP1UhESR9E2v6XQCY
	 oRBB57CwHLn+wFYlAWj1A6Iis+YAtN9ijsOhTverTvkDRClo7RPG88X93eZke1FY0s
	 1REIWSbnl3bAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Izac6ma9HMcz; Tue,  7 Mar 2023 10:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C75560B00;
	Tue,  7 Mar 2023 10:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C75560B00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBD5F1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE384404D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE384404D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QWz-3SSM7C8R for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 10:13:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFCAA4013C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFCAA4013C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:13:02 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A1B6C60027689;
 Tue,  7 Mar 2023 11:12:59 +0100 (CET)
Message-ID: <3ef31c0b-ce40-20d0-7740-5dc0cca278ca@molgen.mpg.de>
Date: Tue, 7 Mar 2023 11:12:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Lin Ma <linma@zju.edu.cn>
References: <ZAcJvkEPqWeJHO2r@calimero.vinschen.de>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ZAcJvkEPqWeJHO2r@calimero.vinschen.de>
Subject: Re: [Intel-wired-lan] [REGRESSION] Deadlock since commit
 6faee3d4ee8b ("igb: Add lock to avoid data race")
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
Cc: intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Adding regressions@lists.linux.dev]

#regzbot ^introduced: 6faee3d4ee8b

Am 07.03.23 um 10:54 schrieb Corinna Vinschen:
> Hi,
> 
> 
> After patch 6faee3d4ee8b ("igb: Add lock to avoid data race"), we see
> a deadlock scenario when trying to unload the igb module.
> 
> The reproducer is pretty simple:
> 
>    # echo 2 > /sys/class/net/ens5f2/device/sriov_numvfs
>    # modprobe -r igb
> 
> The hang is quite thorough, I assume it's suffering a deadlock between
> the rtnl_lock and the spinlock introduced by 6faee3d4ee8b.
> 
> Any chance you could have a look?
> 
> 
> Thanks,
> Corinna
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
