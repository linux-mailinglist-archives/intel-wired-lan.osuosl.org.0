Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D67B78A04F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 02:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FADB40539;
	Thu, 11 Apr 2024 00:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ceHhZL4HDxZk; Thu, 11 Apr 2024 00:54:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3BD840535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712796871;
	bh=SYtRUZQ8HVrb2vo/aMPFNkrKw9nzziCur41M5OjRIFQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uF1rRp3T7YVYbhh4z34wnmYlkOuc90laQ57+ZQPIuiZr+0Im04uhSCtag3RUlqv1A
	 FAAeLmjM8n1hemcEfsrQQ4RRzN6Ou5nczfdXj8T5IMhmmHJconXPRV1hQAYYENl5+s
	 T/2sPWrj5JOT8VeJncWZhpgdst5NibHon6gr51AIYQOXuCiv71niwjwfKkvFpyxZob
	 2kaA438UfsEfwbkObbGh6qu71uorVoyZSQH7OA8QJqWMXrdrAAJZAllYHK2EhXdM3Z
	 oL/VHSIJoLAFYdkQyAhq9Ewg/1oaQQaRqoy18hojlB0QTJcqfjNwa1vhOoeDMD74sd
	 yFbq+qHJIUa4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3BD840535;
	Thu, 11 Apr 2024 00:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 420BD1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 00:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3069F60647
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 00:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K0JYMzrEEodE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 00:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7A8DA605FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A8DA605FB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A8DA605FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 00:54:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 32D5461F7B;
 Thu, 11 Apr 2024 00:54:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC26EC433F1;
 Thu, 11 Apr 2024 00:54:25 +0000 (UTC)
Date: Wed, 10 Apr 2024 17:54:24 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240410175424.7567d32d@kernel.org>
In-Reply-To: <91486cf6-c496-4459-8379-257383d031a1@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <20240405212513.0d189968@kernel.org>
 <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
 <755c17b2-0ec2-49dd-9352-63e5d2f1ba4c@intel.com>
 <202404090909.51BAC81A6@keescook>
 <91486cf6-c496-4459-8379-257383d031a1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712796866;
 bh=SYtRUZQ8HVrb2vo/aMPFNkrKw9nzziCur41M5OjRIFQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CXSraXtOqsvQyZSd+AXa1otcaR5MSenMo/pQdW9z1SWim6a4vAur8xk1G9sgteJMN
 QMLR+LUbOcryrmQHb+e//ScxPe0N4U8/buGO6/iUHBmZOa7KhwLhZGGbCZEE0ZuOXK
 mScvtDuAU0GmXYOZQQe09vweUbLFkqhNp7wrwDMWwoQdivrNM4JTrOXTZddkAdbcNQ
 lMpVE1u+ZA0hVHf4ClkF1E+arwFfHBRsr8ZTnI0IAJlKKQ9tJVa5AVRq2m/wXvsyAX
 GBiUBncqqa6zuHbu//H47sRq+289Lz5dnuOga9tzZ7HLF/K6a0DGwNar5A0Qlp+YO5
 x/rL7420g7omA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CXSraXtO
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Eric Dumazet <edumazet@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Vlastimil Babka <vbabka@suse.cz>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 10 Apr 2024 15:36:13 +0200 Alexander Lobakin wrote:
> Which tree this should go through? Should I include this patch to this
> series with libeth or it's better to push this through kees/linux and
> then pull to net-next?

I think doc tree is a strong candidate, or at least we should not
merge without consulting Jon. Please post and we'll figure it out.

The question someone may ask, however, is whether it causes new
warnings to appear?
