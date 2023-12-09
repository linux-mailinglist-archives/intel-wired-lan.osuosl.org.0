Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 226A980B5FB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 20:12:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E43A40903;
	Sat,  9 Dec 2023 19:11:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E43A40903
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702149119;
	bh=1YySEKK8sqJhp2VAQGLlqZLXzoZNBF+nR0Z7dIcGUjA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tmT0XCsrQR+0eh0Sv/dscT8n58dXMfvoEJI9tg8aGDHW4z5x85TplGbnQrNJPXipX
	 V5/rMpba1mcqr7BkIQ/HaYOKE9B8HAVHf3BMRC+dK9NnaFJmthHFzecc5Mn26l2OJZ
	 +3X6+MJs7rlwxxg15l+kvrmoZ3Nz08BnJCC8Wr0nzdPxw2wkAie3Dl9uLLD6tBDruZ
	 o/FcMQhp/uqjbavYrag/IifVEj9TrsHYRNrXAyqP/LLzaX9Y7RczxafG91tsDXMZZT
	 R2NWRqSNN0e4SqUmqED8gThoJOFqKykWSg86NqSDLsiyNQvH9IcJ/VvCIXd2FUL/4K
	 vK4+q93ciAl9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ldlXuRmGW6Ly; Sat,  9 Dec 2023 19:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FF83408BF;
	Sat,  9 Dec 2023 19:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FF83408BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 414121BF325
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 19:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18683828DA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 19:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18683828DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8IZRxlfCqVCt for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Dec 2023 19:11:52 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B31CE820FA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 19:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B31CE820FA
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6F1B160C48;
 Sat,  9 Dec 2023 19:11:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6D8FC433C7;
 Sat,  9 Dec 2023 19:11:47 +0000 (UTC)
Date: Sat, 9 Dec 2023 19:11:45 +0000
From: Simon Horman <horms@kernel.org>
To: Kunwu Chan <chentao@kylinos.cn>
Message-ID: <20231209191145.GD5817@kernel.org>
References: <20231208031950.47410-1-chentao@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231208031950.47410-1-chentao@kylinos.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702149110;
 bh=GoCf7IwFe+k6fUAIEuS1Bv4Gt8vQiC8SZUGXlwqNP14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JwYAfxWz/Df9+K8+uODNixBenK018c+cULFPVo3AGdn8/km789jmrQDYpXgRqzkEo
 dXIFMhQa6QVAEnDv8dCpcQJgZZEBfeAfk77SYbQdg/AkCKzowdJBQIL3NuWZRs6X5M
 Cf4xbmuqCaU6twGy+HbUEx73seYsDhuu9VZOV+aiqaAR1EuGQQSGyZYswNvmSHS1Ow
 ZImqyTovXdZri7TCWvpyaucHDdbnycZoovR2gwOvIadbKgxv94ztXZjqO3/m3Zm8LN
 3kawYMtQBOH6DnmKOrXaRxebNg7Lb94raNdALbGEFvClLQ6vJ1p1YuXTDI7DcMraft
 wSHe2nEQI8mTQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JwYAfxWz
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] i40e: Use correct buffer
 size in i40e_dbg_command_read
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, jeffrey.t.kirsher@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 08, 2023 at 11:19:50AM +0800, Kunwu Chan wrote:
> The size of "i40e_dbg_command_buf" is 256, the size of "name"
> depends on "IFNAMSIZ", plus a null character and format size,
> the total size is more than 256.
> 
> Improve readability and maintainability by replacing a hardcoded string
> allocation and formatting by the use of the kasprintf() helper.
> 
> Fixes: 02e9c290814c ("i40e: debugfs interface")
> Suggested-by: Simon Horman <horms@kernel.org>
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
