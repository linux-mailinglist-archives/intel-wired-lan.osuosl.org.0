Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B32093CADA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 00:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECBCB60AD3;
	Thu, 25 Jul 2024 22:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57lLX4ujZl9L; Thu, 25 Jul 2024 22:26:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D0D460807
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721946385;
	bh=jDxVSJhiMlsrkovokL+3p48zJoCus0/yKse10umzxrg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FX5wNYznUfhavQ4/5Wwc0/IUnZEdX2+LnD13quJcLEZQYZWW0ZeFysBUAUJGJHvxL
	 X2EjFXTnIafqbNsoKVRCBEx9KBq4Zb2bE9h5RXWbKSnvZxVnKEmkt7yyzZGOPXZvqk
	 nVa47LW3k0DvFYAjF9cuupawK1gMXnObjbkYSOABzNeaVFU+cm9UYyX+QqLeSTalG5
	 nVjx1cg/Imc8MeQPx1V8hRD0kovi6oveJpVaQqBrwKov/picmjtxiCc4O+cBwn1q32
	 Wykx1mhjfAnG0WrPPb5N2CUG31qPWydu5pUiDJoHrR9Y4X1yk1IDr+jbhfVnmOE+TR
	 3DNt9m/n8d+PA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D0D460807;
	Thu, 25 Jul 2024 22:26:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 830381BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BC2840217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:26:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a0UAhfyDgQ4G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 22:26:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94DEC40188
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94DEC40188
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94DEC40188
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:26:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 559B461237;
 Thu, 25 Jul 2024 22:26:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CA0DC116B1;
 Thu, 25 Jul 2024 22:26:20 +0000 (UTC)
Date: Thu, 25 Jul 2024 15:26:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240725152619.75787373@kernel.org>
In-Reply-To: <20240725220810.12748-1-ahmed.zaki@intel.com>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721946380;
 bh=fJHHbC3sfxfjAFbMnFHrHavQdpnYTeHQ371xF7CckrU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ist/rV0d6lnFSQ6ObRpMW6CEYTKsb1J+HS4PkYksNpsC1u3rqnuYJlnsgVXZhh3IJ
 Wo4ti1mX2/OP5UO/ugBaIn+AlqFkpQ9uPHjXfup/HRSmBgXHz4IBK6XpciaEeMV55L
 CVy/HA0dhtKPJ+kJmIWr5ZHiHjt3U9AQgbEQkx83lxU/xAl/eFNMAG1hjXuPIsSpro
 qu2hFs5jvkt7n/9f67i63JM59nguiEDHkjvA3BciI0JZu7TodL9BCBc7tPm0sdUfxx
 pkGAfJcO2y1UQIWlSIkqliAvWIJo/nmmlpJOBXSjA9PSbIgn3vGLjb4okmrag3Pb5X
 uAhjRHzXWFHIg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ist/rV0d
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 00/13] ice: iavf: add
 support for TC U32 filters on VFs
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
Cc: netdev@vger.kernel.org, hkelam@marvell.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 25 Jul 2024 16:07:56 -0600 Ahmed Zaki wrote:
> v5:
>   - Add queue ID validation to iavf_add_cls_u32() (patch 13)

Is it really worth reposting after 24h without getting any feedback?
I'd say it's not..
