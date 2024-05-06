Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DC18BCA6F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 11:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D639607B2;
	Mon,  6 May 2024 09:20:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cNpuQGTglUWP; Mon,  6 May 2024 09:20:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40E0F607CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714987239;
	bh=c538WmiDQ+04C3OysjuU5lMSHSzNsqxg2fLUOmugq/0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HOBgOPNmQ6PuW/ZVZ6p0FYJ3GegfKjHk36ddJ+u/+mDV5lQtzt6aGBd35XkiNonuP
	 28F7EB8m+e9fhPcUhm5J3D/tW8gP+Sd8T4s1LS0sXAws8UVDVbXQngyZNIZaln1gml
	 trKfGVFzkLqG3sw5lg7TwsaPeIbiFoaw/qPSsiOpwss0S/g7eIaBlPwI/D3VlXpTD0
	 9xfKQAUv9iRlsVlQ3zNVw0FF4ra0W6ZTPW+1ipWdcjbTX2KObJI968D7eDQmGkDT4Q
	 Wu5nCizfv5Ey904k9t0NU1G8xaaol7iRTlzO87+LeQz9I3Af2rydq1FxPKsvqDz4yT
	 QQhIZwLkGW0ZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40E0F607CE;
	Mon,  6 May 2024 09:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 49A7A1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 342F340730
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dByyCSDNiT3F for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 09:20:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A890406E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A890406E9
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A890406E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:20:34 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id B0EC7600A2;
 Mon,  6 May 2024 09:20:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by x201s (Postfix) with ESMTP id 00A5B20146D;
 Mon, 06 May 2024 09:20:27 +0000 (UTC)
Message-ID: <af4986b8-e868-4540-852f-7dba5e3196d8@fiberby.net>
Date: Mon, 6 May 2024 09:20:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20240416144325.15319-1-ast@fiberby.net>
 <PH0PR11MB501366480345AB20618700D1961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
Content-Language: en-US
From: =?UTF-8?Q?Asbj=C3=B8rn_Sloth_T=C3=B8nnesen?= <ast@fiberby.net>
In-Reply-To: <PH0PR11MB501366480345AB20618700D1961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1714987232;
 bh=PQytnEGjJh8JMaq9PKzKuAqWRJ/iFQlt/JLPHpUp8rA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=bia3kAVZKNL0yRW4zOVPbcm2km86aipI/gdtPm/xKmr9mQToz+ytRZFkNNHAaADBH
 3lZ9LZ84NBBST9D+D1WkQL58T9g8u39Ig6twwGyJCHxxGMoCcYEO/t5eH+WmuBbBim
 vtsqzpP6AQwrgRFG9hPA+WU1GV3Jkni4XSOXJv8n2iDsDrWXPthavHFKBojokDL4ku
 LSfY/nhKwfsqx5z2spvVTsGeJ91bUbw92uYp4LvTz3w7b9cVx7F+/GmZuQpr2+0QP2
 UPhh2T0Tjp9IuvsDrqVB81Ow6PDNiKn+dlAHcF+anhCOHDzwXpoeZykYZi4hd/CFUj
 ILfGjYezIjS3A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=bia3kAVZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: flower: validate
 control flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sujai,

Thank you for testing.

On 5/6/24 5:30 AM, Buvaneswaran, Sujai wrote:
> HW offload is not directly supported on the iavf VF interface. VF traffic can be offloaded only through VF port representor device which uses ice driver.

Again, there is a awful lot of flower code in iavf_main.c, if it's not supported.

Try with:
ethtool -K $iface hw-tc-offload on
tc qdisc add dev $iface ingress
tc filter add dev $iface protocol ip parent ffff: prio 1 flower dst_mac 3c:fd:fe:a0:d6:70 ip_flags frag skip_sw hw_tc 1

-- 
Best regards
Asbjørn Sloth Tønnesen
Network Engineer
Fiberby - AS42541
